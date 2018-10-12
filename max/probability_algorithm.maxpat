{
	"boxes" : [ 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "1",
				"numinlets" : 2,
				"fontsize" : 12.0,
				"outlettype" : [ "" ],
				"numoutlets" : 1,
				"fontname" : "Arial",
				"patching_rect" : [ 45.0, 240.0, 50.0, 18.0 ],
				"id" : "obj-17"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "button",
				"numinlets" : 1,
				"outlettype" : [ "bang" ],
				"numoutlets" : 1,
				"patching_rect" : [ 76.0, 82.0, 20.0, 20.0 ],
				"id" : "obj-13"
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "number",
				"numinlets" : 1,
				"fontsize" : 12.0,
				"outlettype" : [ "int", "bang" ],
				"numoutlets" : 2,
				"minimum" : 0,
				"fontname" : "Arial",
				"patching_rect" : [ 208.0, 149.0, 50.0, 20.0 ],
				"id" : "obj-9",
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
				"patching_rect" : [ 76.0, 149.0, 50.0, 20.0 ],
				"id" : "obj-8",
				"parameter_enable" : 0
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "dial",
				"numinlets" : 1,
				"outlettype" : [ "float" ],
				"numoutlets" : 1,
				"patching_rect" : [ 208.0, 82.0, 40.0, 40.0 ],
				"id" : "obj-3",
				"parameter_enable" : 0
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
				"patching_rect" : [ 76.0, 117.0, 75.0, 20.0 ],
				"id" : "obj-2"
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
				"patching_rect" : [ 76.0, 196.0, 32.5, 20.0 ],
				"id" : "obj-1"
			}

		}
 ],
	"lines" : [ 		{
			"patchline" : 			{
				"source" : [ "obj-9", 0 ],
				"destination" : [ "obj-1", 1 ],
				"hidden" : 0,
				"color" : [ 0.0, 0.25098, 0.501961, 1.0 ],
				"midpoints" : [ 217.5, 182.0, 99.0, 182.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-8", 0 ],
				"destination" : [ "obj-1", 0 ],
				"hidden" : 0,
				"color" : [ 0.501961, 0.0, 0.501961, 1.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-3", 0 ],
				"destination" : [ "obj-9", 0 ],
				"hidden" : 0,
				"color" : [ 0.0, 0.25098, 0.501961, 1.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-2", 0 ],
				"destination" : [ "obj-8", 0 ],
				"hidden" : 0,
				"color" : [ 0.501961, 0.0, 0.501961, 1.0 ],
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-13", 0 ],
				"destination" : [ "obj-2", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-1", 0 ],
				"destination" : [ "obj-17", 1 ],
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
