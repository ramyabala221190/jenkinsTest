import { Component } from '@angular/core';
import { environment } from 'src/environments/environment';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  title:string="jenkinsTest"
  constructor(){

  }

  ngOnInit(){
    console.log(`App has been built using ${environment.name}`)
  }
}
