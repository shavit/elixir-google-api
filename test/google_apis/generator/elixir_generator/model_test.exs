# Copyright 2019 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

defmodule GoogleApis.Generator.ElixirGenerator.ModelTest do
  use ExUnit.Case
  doctest GoogleApis.Generator.ElixirGenerator.Model

  alias GoogleApis.Generator.ElixirGenerator.{Model, ResourceContext}
  alias GoogleApi.Discovery.V1.Model.JsonSchema

  @test_schema """
  {
    "id": "Annotation",
    "type": "object",
    "properties": {
     "afterSelectedText": {
      "type": "string",
      "description": "Anchor text after excerpt. For requests, if the user bookmarked a screen that has no flowing text on it, then this field should be empty."
     },
     "beforeSelectedText": {
      "type": "string",
      "description": "Anchor text before excerpt. For requests, if the user bookmarked a screen that has no flowing text on it, then this field should be empty."
     },
     "clientVersionRanges": {
      "type": "object",
      "description": "Selection ranges sent from the client.",
      "properties": {
       "cfiRange": {
        "$ref": "BooksAnnotationsRange",
        "description": "Range in CFI format for this annotation sent by client."
       },
       "contentVersion": {
        "type": "string",
        "description": "Content version the client sent in."
       },
       "gbImageRange": {
        "$ref": "BooksAnnotationsRange",
        "description": "Range in GB image format for this annotation sent by client."
       },
       "gbTextRange": {
        "$ref": "BooksAnnotationsRange",
        "description": "Range in GB text format for this annotation sent by client."
       },
       "imageCfiRange": {
        "$ref": "BooksAnnotationsRange",
        "description": "Range in image CFI format for this annotation sent by client."
       }
      }
     },
     "created": {
      "type": "string",
      "description": "Timestamp for the created time of this annotation.",
      "format": "date-time"
     },
     "currentVersionRanges": {
      "type": "object",
      "description": "Selection ranges for the most recent content version.",
      "properties": {
       "cfiRange": {
        "$ref": "BooksAnnotationsRange",
        "description": "Range in CFI format for this annotation for version above."
       },
       "contentVersion": {
        "type": "string",
        "description": "Content version applicable to ranges below."
       },
       "gbImageRange": {
        "$ref": "BooksAnnotationsRange",
        "description": "Range in GB image format for this annotation for version above."
       },
       "gbTextRange": {
        "$ref": "BooksAnnotationsRange",
        "description": "Range in GB text format for this annotation for version above."
       },
       "imageCfiRange": {
        "$ref": "BooksAnnotationsRange",
        "description": "Range in image CFI format for this annotation for version above."
       }
      }
     }
    }
   }
  """

  @nested_unnamed_schema """
  {
    "id": "Offers",
    "type": "object",
    "properties": {
     "items": {
      "type": "array",
      "description": "A list of offers.",
      "items": {
       "type": "object",
       "properties": {
        "artUrl": {
         "type": "string"
        },
        "gservicesKey": {
         "type": "string"
        },
        "id": {
         "type": "string"
        },
        "items": {
         "type": "array",
         "items": {
          "type": "object",
          "properties": {
           "author": {
            "type": "string"
           },
           "canonicalVolumeLink": {
            "type": "string"
           },
           "coverUrl": {
            "type": "string"
           },
           "description": {
            "type": "string"
           },
           "title": {
            "type": "string"
           },
           "volumeId": {
            "type": "string"
           }
          }
         }
        }
       }
      }
     },
     "kind": {
      "type": "string",
      "description": "Resource type.",
      "default": "promooffer#offers"
     }
    }
   }
  """

  @nested_named_schema """
  {
    "properties": {
      "accessInfo": {
        "description": "Any information about a volume related to reading or obtaining that volume text. This information can depend on country (books may be public domain in one country but not in another, e.g.).",
        "properties": {
          "epub": {
            "description": "Information about epub content. (In LITE projection.)",
            "properties": {
              "acsTokenLink": {
                "description": "URL to retrieve ACS token for epub download. (In LITE projection.)",
                "type": "string"
              },
              "downloadLink": {
                "description": "URL to download epub. (In LITE projection.)",
                "type": "string"
              },
              "isAvailable": {
                "description": "Is a flowing text epub available either as public domain or for purchase. (In LITE projection.)",
                "type": "boolean"
              }
            },
            "type": "object"
          }
        },
        "type": "object"
      }
    },
    "type": "object"
  }
  """

  @map_schema """
  {
    "id": "GenericContainer",
    "type": "object",
    "description": "A data structure to test different any types",
    "properties": {
      "any": {
        "type": "any",
        "description": "A generic field type"
      },
      "listOfAny": {
        "type": "array",
        "description": "Contains a list of anything",
        "items": {
          "type": "any"
        }
      },
      "attributes": {
        "description": "This field can contain anything",
        "type": "object",
        "additionalProperties": {
          "description": "Properties of the object.",
          "type": "any"
        }
      },
      "mapOfRefs": {
        "description": "A map of references to objects",
        "type": "object",
        "additionalProperties": {
          "description": "Object value of the map",
          "$ref": "Container"
        }
      }
    }
  }
  """

  @date_schema """
  {
    "id": "DateContainer",
    "type": "object",
    "description": "A data structure to test different date types",
    "properties": {
      "dateVal": {
        "type": "string",
        "description": "A simple date field",
        "format": "date"
      },
      "dateTimeVal": {
        "type": "string",
        "description": "A simple date-time field",
        "format": "date-time"
      },
      "googleDateVal": {
        "type": "string",
        "description": "A google-datetime field",
        "format": "google-datetime"
      }
    }
  }
  """

  @nested_list_schema """
  {
    "id": "NestedContainer",
    "type": "object",
    "description": "Container that has lists of lists of data objects",
    "properties": {
      "rows": {
        "type": "array",
        "description": "A list of lists of data objects",
        "items": {
          "type": "array",
          "items": {
            "type": "object",
            "description": "A deeply nested object",
            "properties": {
              "nestedArrayValue": {
                "type": "array",
                "description": "An array value on a deeply nested object",
                "items": {
                  "type": "object",
                  "properties": {
                    "stringVal": {
                      "type": "string",
                      "description": "A string value on a deeply nested object"
                    }
                  }
                }
              },
              "primitiveValue": {
                "type": "string",
                "description": "A primitive dimension value. A primitive metric value."
              }
            }
          }
        }
      }
    }
  }
  """

  test "loads nested schemas" do
    schema = Poison.decode!(@test_schema, as: %JsonSchema{})

    models = Model.from_schema("Annotation", schema)
    assert 3 == length(models)

    assert ["Annotation", "AnnotationClientVersionRanges", "AnnotationCurrentVersionRanges"] ==
             Enum.map(models, & &1.name)
  end

  test "loads all schemas from map" do
    schema = Poison.decode!(@test_schema, as: %JsonSchema{})

    models = Model.from_schemas(%{"Annotation" => schema})
    assert 3 == length(models)

    assert ["Annotation", "AnnotationClientVersionRanges", "AnnotationCurrentVersionRanges"] ==
             Enum.map(models, & &1.name)
  end

  test "loads unnamed nested schemas depth first" do
    schema = Poison.decode!(@nested_unnamed_schema, as: %JsonSchema{})

    models = Model.from_schemas(%{"Offers" => schema})
    assert 3 == length(models)

    assert ["Offers", "OffersItems", "OffersItemsItems"] == Enum.map(models, & &1.name)
  end

  test "loads named nested schemas" do
    schema = Poison.decode!(@nested_named_schema, as: %JsonSchema{})

    models = Model.from_schemas(%{"Volume" => schema})
    assert 3 == length(models)

    assert ["Volume", "VolumeAccessInfo", "VolumeAccessInfoEpub"] == Enum.map(models, & &1.name)
  end

  test "loads map types" do
    context = ResourceContext.default()

    schema = Poison.decode!(@map_schema, as: %JsonSchema{})
    models = Model.from_schema("GenericContainer", schema)

    assert 1 == length(models)

    model =
      models
      |> List.first()
      |> Model.update_properties(context)

    assert 4 == length(model.properties)

    [any_property, map_property, list_of_any_property, map_of_references_property] =
      model.properties

    assert "any" == any_property.name
    assert "A generic field type" == any_property.description
    assert "any()" == any_property.type.typespec

    assert "attributes" == map_property.name
    assert "This field can contain anything" == map_property.description
    assert "map()" == map_property.type.typespec

    assert "listOfAny" == list_of_any_property.name
    assert "Contains a list of anything" == list_of_any_property.description
    assert "list(any())" == list_of_any_property.type.typespec

    assert "mapOfRefs" == map_of_references_property.name
    assert "A map of references to objects" == map_of_references_property.description

    assert "%{optional(String.t) => Default.Namespace.Model.Container.t}" ==
             map_of_references_property.type.typespec
  end

  test "handles date types" do
    context = ResourceContext.default()

    schema = Poison.decode!(@date_schema, as: %JsonSchema{})
    models = Model.from_schema("GenericContainer", schema)

    assert 1 == length(models)

    model =
      models
      |> List.first()
      |> Model.update_properties(context)

    assert 3 == length(model.properties)

    [datetime_property, date_property, google_datetime_property] = model.properties
    assert "date" == date_property.type.name
    assert "Date" == date_property.type.struct
    assert "Date.t" == date_property.type.typespec
    assert "datetime" == datetime_property.type.name
    assert "DateTime" == datetime_property.type.struct
    assert "DateTime.t" == datetime_property.type.typespec
    assert "datetime" == google_datetime_property.type.name
    assert "DateTime" == google_datetime_property.type.struct
    assert "DateTime.t" == google_datetime_property.type.typespec
  end

  test "handles nested lists" do
    context =
      ResourceContext.empty()
      |> ResourceContext.with_namespace("My.Namespace")

    schema = Poison.decode!(@nested_list_schema, as: %JsonSchema{})
    models = Model.from_schema("NestedContainer", schema)

    assert 3 == length(models)

    model =
      models
      |> List.first()
      |> Model.update_properties(context)

    assert 1 == length(model.properties)
    property = List.first(model.properties)

    assert nil == property.type.struct
    assert "list(list(My.Namespace.Model.NestedContainerRows.t))" == property.type.typespec
  end
end
