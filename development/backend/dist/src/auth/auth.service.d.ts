import { ConfigService } from '@nestjs/config';
import { JwtService } from '@nestjs/jwt';
import { PrismaService } from 'src/prisma/prisma.service';
import { LoginDto } from './dto';
export declare class AuthService {
    private readonly prismaService;
    private readonly jwt;
    private readonly config;
    constructor(prismaService: PrismaService, jwt: JwtService, config: ConfigService);
    login(loginDto: LoginDto): Promise<{
        access_token: string;
    }>;
    signToken(userId: number): Promise<{
        access_token: string;
    }>;
}
