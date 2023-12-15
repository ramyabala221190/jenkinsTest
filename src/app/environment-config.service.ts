import { Injectable } from '@angular/core';
import * as envConfig from '../assets/runtime-environment.json'
import { Observable, of, tap } from 'rxjs';

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

  constructor() { }

  loadConfig(){
    console.log(process.env)
    return of(envConfig);
  }

 
}
