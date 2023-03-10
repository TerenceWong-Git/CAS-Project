import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { RegisterDto } from './dto';

import * as bcrypt from 'bcryptjs';
const SALT_ROUNDS = 10;

async function hashPassword(plainPassword: string) {
  const hash: string = await bcrypt.hash(plainPassword, SALT_ROUNDS);
  return hash;
}

@Injectable()
export class UserService {
  constructor(private readonly prismaService: PrismaService) {}

  async getSelfInfo(userId: number) {
    const foundUser = await this.prismaService.user.findMany({
      // where: {},
      where: { id: userId },
    });
    return foundUser;
  }

  async register(registerDto: RegisterDto) {
    const findUserEmail = await this.prismaService.user.findUnique({
      where: {
        email: registerDto.email,
      },
    });

    const findUserName = await this.prismaService.user.findUnique({
      where: {
        username: registerDto.username,
      },
    });

    const findUserPhone = await this.prismaService.user.findUnique({
      where: {
        phoneNumber: registerDto.phoneNumber,
      },
    });

    if (findUserEmail) {
      throw new HttpException(
        'Email already registered',
        HttpStatus.BAD_REQUEST,
      );
    } else if (findUserName) {
      throw new HttpException(
        'Username already registered',
        HttpStatus.BAD_REQUEST,
      );
    } else if (findUserPhone) {
      throw new HttpException(
        'Phone number already registered',
        HttpStatus.BAD_REQUEST,
      );
    }

    const register = await this.prismaService.user.create({
      data: {
        email: registerDto.email,
        username: registerDto.username,
        password: await hashPassword(registerDto.password),
        phoneNumber: registerDto.phoneNumber,
        gender: registerDto.gender,
        district: registerDto.district,
        yearBirth: registerDto.yearBirth,
        monthBirth: registerDto.monthBirth,
      },
    });
    console.log('Register id from server: ', register.id);
    return register.id;
  }

  async getLanding() {
    const foundLanding = await this.prismaService.petImg.findMany({
      where: { isPrivate: false },
      select: {
        tag: true,
        name: true,
        createdAt: true,
      },
      orderBy: {
        createdAt: 'desc',
      },
    });
    return foundLanding;
  }
}
