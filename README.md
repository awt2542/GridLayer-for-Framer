# GridLayer for Framer.js

Tiny module for making grids.

## Installation

1. Download the GridLayer.coffee file
2. Drop it inside the code editor of a framer studio project


More info about modules in Framer and how to install them: [FramerJS Docs - Modules](http://framerjs.com/docs/#modules)


## Properties

.layers - Array with layers you want to move inside the grid

.columns - Number of columns in grid

.rows - Number of rows in grid

.marginRow - Margin between rows

.marginColumn - Margin between columns

.margin - Combined setting for marginRow and marginColumn

.destroyRemaining - Destroy the layers that remains in the .layers array after grid has been created. Defaults to true

## Examples

### Basic usage
	grid = new GridLayer
		layers: [image1,image2,image3,image3]
		columns: 2
		rows: 2
		marginColumn: 20
		marginRow: 20

##Contact

Twitter: [@andreaswah](http://twitter.com/andreaswah)
