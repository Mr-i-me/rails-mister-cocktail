# README

## Attributes
    * A `cocktail` has a ` name `
    * An `ingredient` has a ` name `
    * A `dose` is the amount needed for  each `ingredient` in a `   cocktail`
    *  So each `dose` references a  `cocktail`, an `ingredient` and has   a `description`.

## Validation

    A cocktail must have a unique name.
    An ingredient must have a unique name.
    A dose must have a description, a cocktail and an ingredient, and [cocktail, ingredient] pairings should be unique.


## Models

### cocktail
  * name
### ingredient
  * name
### dose
  * description
  * cocktail, t.references
  * ingredient, t.references

## Controler
  * cocktails new index show edit destroy
  * ingredients index show
  * doses new index show edit destroy
