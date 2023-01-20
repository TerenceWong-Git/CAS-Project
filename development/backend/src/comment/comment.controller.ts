import {
  Body,
  Controller,
  Get,
  Post,
  UseGuards,
  Put,
  Param,
  Patch,
  ParseIntPipe,
  Delete,
} from '@nestjs/common';
import { JwtGuard } from 'src/auth/guard';
import { CommentService } from './comment.service';
import { CreateCommentDto } from './dto/create-comment.dto';
import { GetUser } from 'src/auth/decorator';
import { UpdateCommentDto } from './dto/update-comment.dto';

@Controller('comment')
export class CommentController {
  constructor(private readonly commentService: CommentService) {}

  @Get()
  async getComment() {
    const result = await this.commentService.getComment();
    return result;
  }

  @Get('myComment')
  @UseGuards(JwtGuard)
  async getUserComment(@GetUser('id') userId: number){
    const result = await this.commentService.getUserComment(userId);
    return result;
  }

  @Post('create')
  @UseGuards(JwtGuard)
  async createComment(
    @GetUser('id') userId: number,
    @Body() commentDto: CreateCommentDto,
  ) {
    await this.commentService.createComment(userId, commentDto);
    return { message: 'success' };
  }

  @Patch('update/:id')
  @UseGuards(JwtGuard)
  async editCommentById(
    @GetUser('id') userId: number,
    @Param('id', ParseIntPipe) commentId: number,
    @Body() commentDto: UpdateCommentDto,
  ) {
    await this.commentService.editCommentById(
      userId,
      commentId,
      commentDto,
    );
    return { message: 'success' };
  }

  
}
