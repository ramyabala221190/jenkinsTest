import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http'
import { tap } from 'rxjs';


export interface environmentConfig{
  env:string|null,
  port:number|null
}

/*
Set the below in tsconfig.json to import the json into the .ts file
    "esModuleInterop":true,
    "resolveJsonModule":true,

    Also set below to allow js file imports into .ts file

    "allowJs": true,
    "checkJs": false,
*/

@Injectable({
  providedIn: 'root'

})
export class EnvironmentConfigService {

  constructor(private http:HttpClient) { }
  private envConfig:environmentConfig={
    env:null,
    port:null
  }

  loadConfig(){
     return this.http.get('/assets/environments/runtime-environment.json').pipe(
      tap((config:any)=>{
        console.log(config);
          this.envConfig=config;
      })
     )
  }

  fetchEnvConfig(){
    return this.envConfig;
  }

 
}
