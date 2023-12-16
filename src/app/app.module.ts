import { NgModule,APP_INITIALIZER } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import {HttpClientModule} from '@angular/common/http'
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { TodosComponent } from './todos/todos.component';
import { CommentsComponent } from './comments/comments.component';
import { EnvironmentConfigService } from './environment-config.service';
import { Observable } from 'rxjs';

function appInitialization(envConfigService:EnvironmentConfigService) :()=>Observable<any>{
   return ()=>envConfigService.loadConfig();
}

@NgModule({
  declarations: [
    AppComponent,
    TodosComponent,
    CommentsComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule
  ],
  providers: [
    {
      provide:APP_INITIALIZER,
      useFactory:appInitialization,
      deps:[EnvironmentConfigService],
      multi:true
    }
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
