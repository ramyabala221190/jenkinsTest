import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { TodosComponent } from './todos/todos.component';
import { CommentsComponent } from './comments/comments.component';

const routes: Routes = [
  {
    path:'todos',
    component:TodosComponent
  },
  {
    path:'comments',
    component:CommentsComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
