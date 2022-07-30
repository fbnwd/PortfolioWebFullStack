import { Component, OnInit } from '@angular/core';
import { PortfolioService } from 'src/app/servicio/portfolio.service';

@Component({
  selector: 'app-encabezado',
  templateUrl: './encabezado.component.html',
  styleUrls: ['./encabezado.component.css']
})
export class EncabezadoComponent implements OnInit {
miPortfolio:any
  constructor(private datosPortfolio:PortfolioService) { }

  ngOnInit(): void {
    this.datosPortfolio.obtenerDatos().subscribe(data=> {
      //console.log(data);
       console.log("Datos personales")+JSON.stringify(data);
      this.miPortfolio = data[0];
    });
  }

}
