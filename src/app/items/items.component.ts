import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-items',
  templateUrl: './items.component.html',
  styleUrls: ['./items.component.css']
})
export class ItemsComponent implements OnInit {
@Input() prop;
  constructor() { }

  ngOnInit() {
  	 console.log(this.prop);
  }

}
