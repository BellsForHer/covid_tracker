import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl } from '@angular/forms';
import { AuthService } from '../auth.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  loginForm = new FormGroup({
    email: new FormControl(''),
    password: new FormControl('')
  })

  constructor (private authService:AuthService, private userService:UserService) {}

  ngOnInit(): void {

  }

  onSubmit() {
    const loginUser = this.loginForm.value;

    this.authService.login(loginUser).subscribe((res:any)=>{console.log(res)})
  }
}
