import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { UserDto } from 'src/user/dto';
import { AddPetDto, AddWeightDto, PetDto } from './dto';

@Injectable()
export class PetService {
  constructor(private readonly prismaService: PrismaService) {}

  async getPet(Id: number) {
    const foundPet = await this.prismaService.pet.findMany({
      where: { userId: Id },
      select: {
        name: true,
        species: {
          select: {
            id: true,
            chiSpecies: true,
            engSpecies: true,
          },
        },
        PetWeight: true,
      },
    });

    return foundPet;
  }

    async getSpecies() {
        const foundSpecies = await this.prismaService.species.findMany()
        return foundSpecies
    }

    async addWeight(addWeightDto:AddWeightDto, petId: number){
        const data = await this.prismaService.petWeight.create({
            data:{
                petId: petId,
                ...addWeightDto
            }
        })
        return data
    }
    
    async addPet(userId: number, addPetDto: AddPetDto, file:Express.Multer.File) {
        
        await this.prismaService.pet.create({
            data: {
                userId: userId,
                ...addPetDto,
                profileImg: file.originalname
            }
            
        })
    }
}
