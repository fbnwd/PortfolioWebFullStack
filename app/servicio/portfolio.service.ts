import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class PortfolioService {
url:String="http://npinti.ddns.net:9008/api/";
  constructor(private http:HttpClient) { }

  obtenerDatos():Observable<any>{
    //console.log("El servicio Portfolio is running...");
    return this.http.get('./assets/data/data.json');
    //return this.http.get(this.url+"persona");
  }
}
