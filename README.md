# README

## Attributes

  * A `cocktail` has a ` name `
  * An `ingredient` has a ` name `
  * A `dose` is the amount needed     for  each `ingredient` in a ` cocktail`
  *  So each `dose` references a `cocktail`, an `ingredient` and has a `description`.

## Models

### cocktail
  * name
### ingredient
  * name
### dose
  * description
  * cocktail, t.references
  * ingredient, t.references
