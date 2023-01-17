"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.AuthService = void 0;
const common_1 = require("@nestjs/common");
const config_1 = require("@nestjs/config");
const jwt_1 = require("@nestjs/jwt");
const prisma_service_1 = require("../prisma/prisma.service");
const hash_1 = require("./hash");
let AuthService = class AuthService {
    constructor(prismaService, jwt, config) {
        this.prismaService = prismaService;
        this.jwt = jwt;
        this.config = config;
    }
    async login(loginDto) {
        console.log(loginDto);
        console.log(loginDto.email);
        const user = await this.prismaService.user.findUnique({
            where: { email: loginDto.email },
            select: { id: true, password: true },
        });
        console.log(user);
        if (!user || !(await (0, hash_1.checkPassword)(loginDto.password, user.password))) {
            throw new common_1.UnauthorizedException();
        }
        console.log('Token: ' + this.signToken);
        console.log('user_id: ' + user.id);
        return this.signToken(user.id);
    }
    async signToken(userId) {
        const payload = { sub: userId };
        console.log('Payload: ' + payload.sub);
        console.log('JWT_SECRET: ' + this.config.get('JWT_SECRET'));
        return {
            access_token: await this.jwt.signAsync(payload, {
                expiresIn: '1d',
                secret: this.config.get('JWT_SECRET'),
            }),
        };
    }
};
AuthService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService,
        jwt_1.JwtService,
        config_1.ConfigService])
], AuthService);
exports.AuthService = AuthService;
//# sourceMappingURL=auth.service.js.map