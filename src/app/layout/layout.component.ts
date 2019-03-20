import { Component, OnInit } from '@angular/core';
import { AppService } from '../services/app.service';

@Component({
  selector: 'app-layout',
  templateUrl: './layout.component.html',
  styleUrls: ['./layout.component.css']
})
export class LayoutComponent implements OnInit {

  data: any = []  

  constructor(public appService: AppService) { }

  ngOnInit() {
    this.AuthorsPage();
  }

  AuthorsPage() {
    try {
      this.appService.getAuthors()
        .subscribe(resp => {
          // console.log(resp, "res");
          this.data = resp
        },
          error => {
            console.log(error, "error");
          })
    } catch (e) {
      console.log(e);
    }
  }

}
