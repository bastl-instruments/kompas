{
	"boxes" : [ 		{
			"box" : 			{
				"maxclass" : "number",
				"numinlets" : 1,
				"fontsize" : 12.0,
				"outlettype" : [ "int", "bang" ],
				"numoutlets" : 2,
				"fontname" : "Arial",
				"patching_rect" : [ 494.5, 304.0, 50.0, 20.0 ],
				"id" : "obj-25",
				"parameter_enable" : 0
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "number",
				"numinlets" : 1,
				"fontsize" : 12.0,
				"outlettype" : [ "int", "bang" ],
				"numoutlets" : 2,
				"fontname" : "Arial",
				"patching_rect" : [ 115.0, 187.0, 50.0, 20.0 ],
				"id" : "obj-24",
				"parameter_enable" : 0
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "button",
				"numinlets" : 1,
				"outlettype" : [ "bang" ],
				"numoutlets" : 1,
				"patching_rect" : [ 494.5, 374.0, 20.0, 20.0 ],
				"id" : "obj-22"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sel 1",
				"numinlets" : 2,
				"fontsize" : 12.0,
				"outlettype" : [ "bang", "" ],
				"numoutlets" : 2,
				"fontname" : "Arial",
				"patching_rect" : [ 494.5, 331.0, 36.0, 20.0 ],
				"id" : "obj-1"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "button",
				"numinlets" : 1,
				"outlettype" : [ "bang" ],
				"numoutlets" : 1,
				"patching_rect" : [ 115.0, 131.0, 20.0, 20.0 ],
				"id" : "obj-2"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "toggle",
				"numinlets" : 1,
				"outlettype" : [ "int" ],
				"numoutlets" : 1,
				"patching_rect" : [ 115.0, 53.0, 20.0, 20.0 ],
				"id" : "obj-40",
				"parameter_enable" : 0
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "metro 500",
				"numinlets" : 2,
				"fontsize" : 12.0,
				"outlettype" : [ "bang" ],
				"numoutlets" : 1,
				"fontname" : "Arial",
				"patching_rect" : [ 115.0, 82.0, 65.0, 20.0 ],
				"id" : "obj-37"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "fetch $1",
				"numinlets" : 2,
				"fontsize" : 12.0,
				"outlettype" : [ "" ],
				"numoutlets" : 1,
				"fontname" : "Arial",
				"patching_rect" : [ 115.0, 213.0, 53.0, 18.0 ],
				"id" : "obj-35"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "counter 1 8",
				"numinlets" : 5,
				"fontsize" : 12.0,
				"outlettype" : [ "int", "", "", "int" ],
				"numoutlets" : 4,
				"fontname" : "Arial",
				"patching_rect" : [ 115.0, 159.0, 73.0, 20.0 ],
				"id" : "obj-23"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "dial",
				"numinlets" : 1,
				"outlettype" : [ "float" ],
				"numoutlets" : 1,
				"patching_rect" : [ 270.75, 53.0, 40.0, 40.0 ],
				"id" : "obj-21",
				"parameter_enable" : 0
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "button",
				"numinlets" : 1,
				"outlettype" : [ "bang" ],
				"numoutlets" : 1,
				"patching_rect" : [ 234.0, 53.0, 20.0, 20.0 ],
				"id" : "obj-20"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "random 128",
				"numinlets" : 2,
				"fontsize" : 12.0,
				"outlettype" : [ "int" ],
				"numoutlets" : 1,
				"fontname" : "Arial",
				"patching_rect" : [ 234.0, 131.0, 75.0, 20.0 ],
				"id" : "obj-9"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "< 0",
				"numinlets" : 2,
				"fontsize" : 12.0,
				"outlettype" : [ "int" ],
				"numoutlets" : 1,
				"fontname" : "Arial",
				"patching_rect" : [ 234.0, 159.0, 32.5, 20.0 ],
				"id" : "obj-10"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "pak 0 0 0 0 0 0 0 0",
				"numinlets" : 8,
				"fontsize" : 12.0,
				"outlettype" : [ "" ],
				"numoutlets" : 1,
				"fontname" : "Arial",
				"patching_rect" : [ 234.0, 211.0, 113.5, 20.0 ],
				"id" : "obj-31"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "multislider",
				"numinlets" : 1,
				"outlettype" : [ "", "" ],
				"setstyle" : 1,
				"numoutlets" : 2,
				"setminmax" : [ 0.0, 1.0 ],
				"size" : 8,
				"patching_rect" : [ 234.0, 256.0, 279.5, 40.0 ],
				"id" : "obj-30",
				"parameter_enable" : 0,
				"spacing" : 2
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "random 128",
				"numinlets" : 2,
				"fontsize" : 12.0,
				"outlettype" : [ "int" ],
				"numoutlets" : 1,
				"fontname" : "Arial",
				"patching_rect" : [ 807.0, 131.0, 75.0, 20.0 ],
				"id" : "obj-11"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "< 0",
				"numinlets" : 2,
				"fontsize" : 12.0,
				"outlettype" : [ "int" ],
				"numoutlets" : 1,
				"fontname" : "Arial",
				"patching_rect" : [ 807.0, 159.0, 32.5, 20.0 ],
				"id" : "obj-12"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "random 128",
				"numinlets" : 2,
				"fontsize" : 12.0,
				"outlettype" : [ "int" ],
				"numoutlets" : 1,
				"fontname" : "Arial",
				"patching_rect" : [ 726.0, 131.0, 75.0, 20.0 ],
				"id" : "obj-13"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "< 0",
				"numinlets" : 2,
				"fontsize" : 12.0,
				"outlettype" : [ "int" ],
				"numoutlets" : 1,
				"fontname" : "Arial",
				"patching_rect" : [ 726.0, 159.0, 32.5, 20.0 ],
				"id" : "obj-14"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "random 128",
				"numinlets" : 2,
				"fontsize" : 12.0,
				"outlettype" : [ "int" ],
				"numoutlets" : 1,
				"fontname" : "Arial",
				"patching_rect" : [ 644.0, 131.0, 75.0, 20.0 ],
				"id" : "obj-15"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "< 0",
				"numinlets" : 2,
				"fontsize" : 12.0,
				"outlettype" : [ "int" ],
				"numoutlets" : 1,
				"fontname" : "Arial",
				"patching_rect" : [ 644.0, 159.0, 32.5, 20.0 ],
				"id" : "obj-16"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "random 128",
				"numinlets" : 2,
				"fontsize" : 12.0,
				"outlettype" : [ "int" ],
				"numoutlets" : 1,
				"fontname" : "Arial",
				"patching_rect" : [ 562.0, 131.0, 75.0, 20.0 ],
				"id" : "obj-17"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "< 0",
				"numinlets" : 2,
				"fontsize" : 12.0,
				"outlettype" : [ "int" ],
				"numoutlets" : 1,
				"fontname" : "Arial",
				"patching_rect" : [ 562.0, 159.0, 32.5, 20.0 ],
				"id" : "obj-18"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "random 128",
				"numinlets" : 2,
				"fontsize" : 12.0,
				"outlettype" : [ "int" ],
				"numoutlets" : 1,
				"fontname" : "Arial",
				"patching_rect" : [ 479.0, 131.0, 75.0, 20.0 ],
				"id" : "obj-7"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "< 0",
				"numinlets" : 2,
				"fontsize" : 12.0,
				"outlettype" : [ "int" ],
				"numoutlets" : 1,
				"fontname" : "Arial",
				"patching_rect" : [ 479.0, 159.0, 32.5, 20.0 ],
				"id" : "obj-8"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "random 128",
				"numinlets" : 2,
				"fontsize" : 12.0,
				"outlettype" : [ "int" ],
				"numoutlets" : 1,
				"fontname" : "Arial",
				"patching_rect" : [ 398.0, 131.0, 75.0, 20.0 ],
				"id" : "obj-5"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "< 0",
				"numinlets" : 2,
				"fontsize" : 12.0,
				"outlettype" : [ "int" ],
				"numoutlets" : 1,
				"fontname" : "Arial",
				"patching_rect" : [ 398.0, 159.0, 32.5, 20.0 ],
				"id" : "obj-6"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "random 128",
				"numinlets" : 2,
				"fontsize" : 12.0,
				"outlettype" : [ "int" ],
				"numoutlets" : 1,
				"fontname" : "Arial",
				"patching_rect" : [ 316.0, 131.0, 75.0, 20.0 ],
				"id" : "obj-3"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "< 0",
				"numinlets" : 2,
				"fontsize" : 12.0,
				"outlettype" : [ "int" ],
				"numoutlets" : 1,
				"fontname" : "Arial",
				"patching_rect" : [ 316.0, 159.0, 32.5, 20.0 ],
				"id" : "obj-4"
			}

		}
 ],
	"lines" : [ 		{
			"patchline" : 			{
				"source" : [ "obj-9", 0 ],
				"destination" : [ "obj-10", 0 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-8", 0 ],
				"destination" : [ "obj-31", 3 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"midpoints" : [ 488.5, 194.5, 284.0, 194.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-7", 0 ],
				"destination" : [ "obj-8", 0 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-6", 0 ],
				"destination" : [ "obj-31", 2 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"midpoints" : [ 407.5, 194.5, 270.5, 194.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-5", 0 ],
				"destination" : [ "obj-6", 0 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-40", 0 ],
				"destination" : [ "obj-37", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-4", 0 ],
				"destination" : [ "obj-31", 1 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"midpoints" : [ 325.5, 194.5, 257.0, 194.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-37", 0 ],
				"destination" : [ "obj-2", 0 ],
				"hidden" : 0,
				"color" : [ 0.0, 0.25098, 0.501961, 1.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-30", 0 ],
				"hidden" : 0,
				"color" : [ 0.501961, 0.0, 0.501961, 1.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-31", 0 ],
				"destination" : [ "obj-30", 0 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-30", 1 ],
				"destination" : [ "obj-25", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-3", 0 ],
				"destination" : [ "obj-4", 0 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-25", 0 ],
				"destination" : [ "obj-1", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-24", 0 ],
				"destination" : [ "obj-35", 0 ],
				"hidden" : 0,
				"color" : [ 0.501961, 0.0, 0.501961, 1.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-23", 0 ],
				"destination" : [ "obj-24", 0 ],
				"hidden" : 0,
				"color" : [ 0.501961, 0.0, 0.501961, 1.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-21", 0 ],
				"destination" : [ "obj-8", 1 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"midpoints" : [ 280.25, 125.5, 502.0, 125.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-21", 0 ],
				"destination" : [ "obj-6", 1 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"midpoints" : [ 280.25, 125.5, 421.0, 125.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-21", 0 ],
				"destination" : [ "obj-4", 1 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"midpoints" : [ 280.25, 125.5, 339.0, 125.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-21", 0 ],
				"destination" : [ "obj-18", 1 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"midpoints" : [ 280.25, 125.5, 585.0, 125.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-21", 0 ],
				"destination" : [ "obj-16", 1 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"midpoints" : [ 280.25, 125.5, 667.0, 125.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-21", 0 ],
				"destination" : [ "obj-14", 1 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"midpoints" : [ 280.25, 125.5, 749.0, 125.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-21", 0 ],
				"destination" : [ "obj-12", 1 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"midpoints" : [ 280.25, 125.5, 830.0, 125.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-21", 0 ],
				"destination" : [ "obj-10", 1 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"midpoints" : [ 280.25, 125.5, 257.0, 125.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-20", 0 ],
				"destination" : [ "obj-9", 0 ],
				"hidden" : 0,
				"midpoints" : [ 243.5, 101.5, 243.5, 101.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-20", 0 ],
				"destination" : [ "obj-7", 0 ],
				"hidden" : 0,
				"midpoints" : [ 243.5, 101.5, 488.5, 101.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-20", 0 ],
				"destination" : [ "obj-5", 0 ],
				"hidden" : 0,
				"midpoints" : [ 243.5, 101.5, 407.5, 101.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-20", 0 ],
				"destination" : [ "obj-3", 0 ],
				"hidden" : 0,
				"midpoints" : [ 243.5, 101.5, 325.5, 101.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-20", 0 ],
				"destination" : [ "obj-17", 0 ],
				"hidden" : 0,
				"midpoints" : [ 243.5, 101.5, 571.5, 101.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-20", 0 ],
				"destination" : [ "obj-15", 0 ],
				"hidden" : 0,
				"midpoints" : [ 243.5, 101.5, 653.5, 101.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-20", 0 ],
				"destination" : [ "obj-13", 0 ],
				"hidden" : 0,
				"midpoints" : [ 243.5, 101.5, 735.5, 101.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-20", 0 ],
				"destination" : [ "obj-11", 0 ],
				"hidden" : 0,
				"midpoints" : [ 243.5, 101.5, 816.5, 101.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-2", 0 ],
				"destination" : [ "obj-23", 0 ],
				"hidden" : 0,
				"color" : [ 0.0, 0.25098, 0.501961, 1.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-18", 0 ],
				"destination" : [ "obj-31", 4 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"midpoints" : [ 571.5, 194.5, 297.5, 194.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-17", 0 ],
				"destination" : [ "obj-18", 0 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-16", 0 ],
				"destination" : [ "obj-31", 5 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"midpoints" : [ 653.5, 194.5, 311.0, 194.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-15", 0 ],
				"destination" : [ "obj-16", 0 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-14", 0 ],
				"destination" : [ "obj-31", 6 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"midpoints" : [ 735.5, 194.5, 324.5, 194.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-13", 0 ],
				"destination" : [ "obj-14", 0 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-12", 0 ],
				"destination" : [ "obj-31", 7 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"midpoints" : [ 816.5, 194.5, 338.0, 194.5 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-11", 0 ],
				"destination" : [ "obj-12", 0 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-10", 0 ],
				"destination" : [ "obj-31", 0 ],
				"hidden" : 0,
				"color" : [ 0.778694, 0.778837, 0.778646, 0.9 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-1", 0 ],
				"destination" : [ "obj-22", 0 ],
				"hidden" : 0,
				"color" : [ 0.0, 0.501961, 0.0, 1.0 ],
				"disabled" : 0
			}

		}
 ],
	"appversion" : 	{
		"major" : 6,
		"minor" : 1,
		"revision" : 10,
		"architecture" : "x86"
	}

}
