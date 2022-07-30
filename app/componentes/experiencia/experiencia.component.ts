import { Component, OnInit } from '@angular/core';
import { PortfolioService } from 'src/app/servicio/portfolio.service';

@Component({
  selector: 'app-experiencia',
  templateUrl: './experiencia.component.html',
  styleUrls: ['./experiencia.component.css']
})
export class ExperienciaComponent implements OnInit {
  experienciaList:any;   
  constructor(private datosPortfolio:PortfolioService) { }

  ngOnInit(): void {
    this.datosPortfolio.obtenerDatos().subscribe((data: { experience: any; })=>{
      this.experienciaList=data.experience;
  });

}}