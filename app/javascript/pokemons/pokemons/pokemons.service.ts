import { Injectable } from '@angular/core'
import { Http, Response } from '@angular/http'
import { Observable } from 'rxjs/Observable'
import 'rxjs/add/operator/map'

import { Pokemon } from './pokemon'

@Injectable()
export class PokemonsService {

  private base_url: string = '/api/pokemons/'

  constructor(
    private http: Http
  ) {}

  public all() : Observable<Pokemon[]> {
    return this.http.get(this.base_url).map( (res: Response) => res.json() )
  }

  public find(id: number) : Observable<Pokemon> {
    return this.http.get(this.base_url + id).map( (res: Response) => res.json() )
  }

  public create(pokemon: Pokemon) : Observable<Pokemon> {
    return this.http.post(this.base_url, { pokemon: pokemon }).map( (res: Response) => res.json() )
  }

  public update(pokemon: Pokemon) : Observable<Pokemon> {
    return this.http.patch(this.base_url + pokemon.id, { pokemon: pokemon }).map( (res: Response) => res.json() )
  }

  public destroy(pokemon: Pokemon) : Observable<Pokemon> {
    return this.http.delete(this.base_url + pokemon.id).map( (res: Response) => res.json() )
  }

}
