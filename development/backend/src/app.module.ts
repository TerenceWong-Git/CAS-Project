import { Module } from '@nestjs/common';
import { UserModule } from './user/user.module';
import { PrismaModule } from './prisma/prisma.module';
import { AuthModule } from './auth/auth.module';
import { ConfigModule } from '@nestjs/config';
import { CommentModule } from './comment/comment.module';
import { PetModule } from './pet/pet.module';
import { MapModule } from './map/map.module';
import { ServeStaticModule } from '@nestjs/serve-static';
import { join } from 'path';

@Module({
  imports: [
    ConfigModule.forRoot({ isGlobal: true, envFilePath: ['.env'] }),
    UserModule,
    PrismaModule,
    AuthModule,
    MapModule,
    CommentModule,
    PetModule,
    ServeStaticModule.forRoot({
      rootPath: join(__dirname, '..', '../upload'),
      serveRoot: '/upload/',
    }),
  ],
  controllers: [],
  providers: [],
})
export class AppModule {}
