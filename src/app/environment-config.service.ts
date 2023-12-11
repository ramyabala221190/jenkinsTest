import { Injectable } from '@angular/core';
import * as envConfig from '../assets/runtime-environment.js'
import { Observable, of, tap } from 'rxjs';

export interface environmentConfig{
  env:string,
  port:number|string
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

  constructor() { }

  private envConfigList:environmentConfig={
    env:"",
    port:0
  };

  loadConfig():Observable<environmentConfig>{
    return of(envConfig).pipe(
      tap((config:environmentConfig)=>{
        this.envConfigList=config;
      })
    )
  }

  fetchEnvConfig(){
    return this.envConfigList;
  }
}
