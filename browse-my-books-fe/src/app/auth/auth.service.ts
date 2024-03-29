import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  constructor(private http:HttpClient) { }

  signup(userSignup) {
    return this.http.post("http://localhost:3000/api/v1/users/create", userSignup)
  }

  login(user) {
    return this.http.post("http://localhost:3000/api/v1/users/login", user)
  }
}
