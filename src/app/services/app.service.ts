import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs/Observable'


const httpOptions = {
  headers: new HttpHeaders({ 'Content-Type': 'application/json' })
};


@Injectable({
  providedIn: 'root'
})
export class AppService {

   constructor(private http : HttpClient) { }

   getAuthors() {
    return this.http.get('http://demo3614446.mockable.io/results');
  }
}
