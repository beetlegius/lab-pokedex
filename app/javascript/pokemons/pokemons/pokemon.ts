import { PokemonType } from '../pokemon-types/pokemon-type'

export class Pokemon {
  id: number
  name: string
  description: string
  weight: number
  height: number
  types: PokemonType[]
}
