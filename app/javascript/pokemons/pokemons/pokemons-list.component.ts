import { Component, OnInit } from '@angular/core'
const TEMPLATE = require('./pokemons-list.component.html')

import { PokemonsService } from './pokemons.service'
import { Pokemon } from './pokemon'

@Component({
  selector: 'pokemons-list',
  template: TEMPLATE
})
export class PokemonsListComponent implements OnInit {

  public pokemons: Pokemon[]

  constructor(
    private _pokemons: PokemonsService
  ) { }

  ngOnInit() {
    this._pokemons.all().subscribe(pokemons =>
      this.pokemons = pokemons
    )
  }

  public show(pokemon: Pokemon) : void {
    console.log(pokemon)
  }

}
