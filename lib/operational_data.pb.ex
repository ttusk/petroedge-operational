defmodule Petroedge.Operational.V1.GeoPoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.17.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GeoPoint",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "latitude",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "latitude",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "longitude",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "longitude",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: [],
      __protobuf__: true
    }
  end

  field(:latitude, 1, type: :double)
  field(:longitude, 2, type: :double)
end

defmodule Petroedge.Operational.V1.Asset do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.17.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "Asset",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "id",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "id",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "name",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "name",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "type",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "type",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "location",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".petroedge.operational.v1.GeoPoint",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "location",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "parent_id",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "parentId",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: [],
      __protobuf__: true
    }
  end

  field(:id, 1, type: :string)
  field(:name, 2, type: :string)
  field(:type, 3, type: :string)
  field(:location, 4, type: Petroedge.Operational.V1.GeoPoint)
  field(:parent_id, 5, type: :string, json_name: "parentId")
end

defmodule Petroedge.Operational.V1.RegisterAssetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.17.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "RegisterAssetRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "asset",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".petroedge.operational.v1.Asset",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "asset",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: [],
      __protobuf__: true
    }
  end

  field(:asset, 1, type: Petroedge.Operational.V1.Asset)
end

defmodule Petroedge.Operational.V1.RegisterAssetResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.17.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "RegisterAssetResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "asset",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".petroedge.operational.v1.Asset",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "asset",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: [],
      __protobuf__: true
    }
  end

  field(:asset, 1, type: Petroedge.Operational.V1.Asset)
end

defmodule Petroedge.Operational.V1.GetAssetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.17.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetAssetRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "id",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "id",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: [],
      __protobuf__: true
    }
  end

  field(:id, 1, type: :string)
end

defmodule Petroedge.Operational.V1.GetAssetResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.17.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "GetAssetResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "asset",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".petroedge.operational.v1.Asset",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "asset",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: [],
      __protobuf__: true
    }
  end

  field(:asset, 1, type: Petroedge.Operational.V1.Asset)
end

defmodule Petroedge.Operational.V1.IngestTelemetryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.17.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "IngestTelemetryRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "telemetry",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".petroedge.operational.v1.TelemetryEnvelope",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "telemetry",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: [],
      __protobuf__: true
    }
  end

  field(:telemetry, 1, type: Petroedge.Operational.V1.TelemetryEnvelope)
end

defmodule Petroedge.Operational.V1.TelemetryEnvelope.MeasurementsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.17.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "MeasurementsEntry",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "key",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "key",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "value",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "value",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: %Google.Protobuf.MessageOptions{
        message_set_wire_format: false,
        no_standard_descriptor_accessor: false,
        deprecated: false,
        map_entry: true,
        deprecated_legacy_json_field_conflicts: nil,
        features: nil,
        uninterpreted_option: [],
        __pb_extensions__: %{},
        __unknown_fields__: [],
        __protobuf__: true
      },
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: [],
      __protobuf__: true
    }
  end

  field(:key, 1, type: :string)
  field(:value, 2, type: :double)
end

defmodule Petroedge.Operational.V1.TelemetryEnvelope do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.17.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "TelemetryEnvelope",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "asset_id",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "assetId",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "observed_at",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Timestamp",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "observedAt",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "measurements",
          extendee: nil,
          number: 3,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".petroedge.operational.v1.TelemetryEnvelope.MeasurementsEntry",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "measurements",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "source",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "source",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        }
      ],
      nested_type: [
        %Google.Protobuf.DescriptorProto{
          name: "MeasurementsEntry",
          field: [
            %Google.Protobuf.FieldDescriptorProto{
              name: "key",
              extendee: nil,
              number: 1,
              label: :LABEL_OPTIONAL,
              type: :TYPE_STRING,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "key",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            },
            %Google.Protobuf.FieldDescriptorProto{
              name: "value",
              extendee: nil,
              number: 2,
              label: :LABEL_OPTIONAL,
              type: :TYPE_DOUBLE,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "value",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            }
          ],
          nested_type: [],
          enum_type: [],
          extension_range: [],
          extension: [],
          options: %Google.Protobuf.MessageOptions{
            message_set_wire_format: false,
            no_standard_descriptor_accessor: false,
            deprecated: false,
            map_entry: true,
            deprecated_legacy_json_field_conflicts: nil,
            features: nil,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [],
            __protobuf__: true
          },
          oneof_decl: [],
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: [],
          __protobuf__: true
        }
      ],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: [],
      __protobuf__: true
    }
  end

  field(:asset_id, 1, type: :string, json_name: "assetId")
  field(:observed_at, 2, type: Google.Protobuf.Timestamp, json_name: "observedAt")

  field(:measurements, 3,
    repeated: true,
    type: Petroedge.Operational.V1.TelemetryEnvelope.MeasurementsEntry,
    map: true
  )

  field(:source, 4, type: :string)
end

defmodule Petroedge.Operational.V1.IngestTelemetryResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.17.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "IngestTelemetryResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "accepted",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "accepted",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: [],
      __protobuf__: true
    }
  end

  field(:accepted, 1, type: :uint32)
end

defmodule Petroedge.Operational.V1.StreamTelemetryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.17.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "StreamTelemetryRequest",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "asset_id",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "assetId",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "from",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".google.protobuf.Timestamp",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "from",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: [],
      __protobuf__: true
    }
  end

  field(:asset_id, 1, type: :string, json_name: "assetId")
  field(:from, 2, type: Google.Protobuf.Timestamp)
end

defmodule Petroedge.Operational.V1.StreamTelemetryResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.17.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "StreamTelemetryResponse",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "telemetry",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".petroedge.operational.v1.TelemetryEnvelope",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "telemetry",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: [],
      __protobuf__: true
    }
  end

  field(:telemetry, 1, type: Petroedge.Operational.V1.TelemetryEnvelope)
end

defmodule Petroedge.Operational.V1.OperationalDataService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "petroedge.operational.v1.OperationalDataService",
    protoc_gen_elixir_version: "0.17.0"

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.FileDescriptorProto{
      name: "operational_data.proto",
      package: "petroedge.operational.v1",
      dependency: ["google/protobuf/timestamp.proto"],
      message_type: [
        %Google.Protobuf.DescriptorProto{
          name: "GeoPoint",
          field: [
            %Google.Protobuf.FieldDescriptorProto{
              name: "latitude",
              extendee: nil,
              number: 1,
              label: :LABEL_OPTIONAL,
              type: :TYPE_DOUBLE,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "latitude",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            },
            %Google.Protobuf.FieldDescriptorProto{
              name: "longitude",
              extendee: nil,
              number: 2,
              label: :LABEL_OPTIONAL,
              type: :TYPE_DOUBLE,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "longitude",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            }
          ],
          nested_type: [],
          enum_type: [],
          extension_range: [],
          extension: [],
          options: nil,
          oneof_decl: [],
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.DescriptorProto{
          name: "Asset",
          field: [
            %Google.Protobuf.FieldDescriptorProto{
              name: "id",
              extendee: nil,
              number: 1,
              label: :LABEL_OPTIONAL,
              type: :TYPE_STRING,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "id",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            },
            %Google.Protobuf.FieldDescriptorProto{
              name: "name",
              extendee: nil,
              number: 2,
              label: :LABEL_OPTIONAL,
              type: :TYPE_STRING,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "name",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            },
            %Google.Protobuf.FieldDescriptorProto{
              name: "type",
              extendee: nil,
              number: 3,
              label: :LABEL_OPTIONAL,
              type: :TYPE_STRING,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "type",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            },
            %Google.Protobuf.FieldDescriptorProto{
              name: "location",
              extendee: nil,
              number: 4,
              label: :LABEL_OPTIONAL,
              type: :TYPE_MESSAGE,
              type_name: ".petroedge.operational.v1.GeoPoint",
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "location",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            },
            %Google.Protobuf.FieldDescriptorProto{
              name: "parent_id",
              extendee: nil,
              number: 5,
              label: :LABEL_OPTIONAL,
              type: :TYPE_STRING,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "parentId",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            }
          ],
          nested_type: [],
          enum_type: [],
          extension_range: [],
          extension: [],
          options: nil,
          oneof_decl: [],
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.DescriptorProto{
          name: "RegisterAssetRequest",
          field: [
            %Google.Protobuf.FieldDescriptorProto{
              name: "asset",
              extendee: nil,
              number: 1,
              label: :LABEL_OPTIONAL,
              type: :TYPE_MESSAGE,
              type_name: ".petroedge.operational.v1.Asset",
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "asset",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            }
          ],
          nested_type: [],
          enum_type: [],
          extension_range: [],
          extension: [],
          options: nil,
          oneof_decl: [],
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.DescriptorProto{
          name: "RegisterAssetResponse",
          field: [
            %Google.Protobuf.FieldDescriptorProto{
              name: "asset",
              extendee: nil,
              number: 1,
              label: :LABEL_OPTIONAL,
              type: :TYPE_MESSAGE,
              type_name: ".petroedge.operational.v1.Asset",
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "asset",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            }
          ],
          nested_type: [],
          enum_type: [],
          extension_range: [],
          extension: [],
          options: nil,
          oneof_decl: [],
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.DescriptorProto{
          name: "GetAssetRequest",
          field: [
            %Google.Protobuf.FieldDescriptorProto{
              name: "id",
              extendee: nil,
              number: 1,
              label: :LABEL_OPTIONAL,
              type: :TYPE_STRING,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "id",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            }
          ],
          nested_type: [],
          enum_type: [],
          extension_range: [],
          extension: [],
          options: nil,
          oneof_decl: [],
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.DescriptorProto{
          name: "GetAssetResponse",
          field: [
            %Google.Protobuf.FieldDescriptorProto{
              name: "asset",
              extendee: nil,
              number: 1,
              label: :LABEL_OPTIONAL,
              type: :TYPE_MESSAGE,
              type_name: ".petroedge.operational.v1.Asset",
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "asset",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            }
          ],
          nested_type: [],
          enum_type: [],
          extension_range: [],
          extension: [],
          options: nil,
          oneof_decl: [],
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.DescriptorProto{
          name: "IngestTelemetryRequest",
          field: [
            %Google.Protobuf.FieldDescriptorProto{
              name: "telemetry",
              extendee: nil,
              number: 1,
              label: :LABEL_OPTIONAL,
              type: :TYPE_MESSAGE,
              type_name: ".petroedge.operational.v1.TelemetryEnvelope",
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "telemetry",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            }
          ],
          nested_type: [],
          enum_type: [],
          extension_range: [],
          extension: [],
          options: nil,
          oneof_decl: [],
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.DescriptorProto{
          name: "TelemetryEnvelope",
          field: [
            %Google.Protobuf.FieldDescriptorProto{
              name: "asset_id",
              extendee: nil,
              number: 1,
              label: :LABEL_OPTIONAL,
              type: :TYPE_STRING,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "assetId",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            },
            %Google.Protobuf.FieldDescriptorProto{
              name: "observed_at",
              extendee: nil,
              number: 2,
              label: :LABEL_OPTIONAL,
              type: :TYPE_MESSAGE,
              type_name: ".google.protobuf.Timestamp",
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "observedAt",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            },
            %Google.Protobuf.FieldDescriptorProto{
              name: "measurements",
              extendee: nil,
              number: 3,
              label: :LABEL_REPEATED,
              type: :TYPE_MESSAGE,
              type_name: ".petroedge.operational.v1.TelemetryEnvelope.MeasurementsEntry",
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "measurements",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            },
            %Google.Protobuf.FieldDescriptorProto{
              name: "source",
              extendee: nil,
              number: 4,
              label: :LABEL_OPTIONAL,
              type: :TYPE_STRING,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "source",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            }
          ],
          nested_type: [
            %Google.Protobuf.DescriptorProto{
              name: "MeasurementsEntry",
              field: [
                %Google.Protobuf.FieldDescriptorProto{
                  name: "key",
                  extendee: nil,
                  number: 1,
                  label: :LABEL_OPTIONAL,
                  type: :TYPE_STRING,
                  type_name: nil,
                  default_value: nil,
                  options: nil,
                  oneof_index: nil,
                  json_name: "key",
                  proto3_optional: nil,
                  __unknown_fields__: [],
                  __protobuf__: true
                },
                %Google.Protobuf.FieldDescriptorProto{
                  name: "value",
                  extendee: nil,
                  number: 2,
                  label: :LABEL_OPTIONAL,
                  type: :TYPE_DOUBLE,
                  type_name: nil,
                  default_value: nil,
                  options: nil,
                  oneof_index: nil,
                  json_name: "value",
                  proto3_optional: nil,
                  __unknown_fields__: [],
                  __protobuf__: true
                }
              ],
              nested_type: [],
              enum_type: [],
              extension_range: [],
              extension: [],
              options: %Google.Protobuf.MessageOptions{
                message_set_wire_format: false,
                no_standard_descriptor_accessor: false,
                deprecated: false,
                map_entry: true,
                deprecated_legacy_json_field_conflicts: nil,
                features: nil,
                uninterpreted_option: [],
                __pb_extensions__: %{},
                __unknown_fields__: [],
                __protobuf__: true
              },
              oneof_decl: [],
              reserved_range: [],
              reserved_name: [],
              __unknown_fields__: [],
              __protobuf__: true
            }
          ],
          enum_type: [],
          extension_range: [],
          extension: [],
          options: nil,
          oneof_decl: [],
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.DescriptorProto{
          name: "IngestTelemetryResponse",
          field: [
            %Google.Protobuf.FieldDescriptorProto{
              name: "accepted",
              extendee: nil,
              number: 1,
              label: :LABEL_OPTIONAL,
              type: :TYPE_UINT32,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "accepted",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            }
          ],
          nested_type: [],
          enum_type: [],
          extension_range: [],
          extension: [],
          options: nil,
          oneof_decl: [],
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.DescriptorProto{
          name: "StreamTelemetryRequest",
          field: [
            %Google.Protobuf.FieldDescriptorProto{
              name: "asset_id",
              extendee: nil,
              number: 1,
              label: :LABEL_OPTIONAL,
              type: :TYPE_STRING,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "assetId",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            },
            %Google.Protobuf.FieldDescriptorProto{
              name: "from",
              extendee: nil,
              number: 2,
              label: :LABEL_OPTIONAL,
              type: :TYPE_MESSAGE,
              type_name: ".google.protobuf.Timestamp",
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "from",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            }
          ],
          nested_type: [],
          enum_type: [],
          extension_range: [],
          extension: [],
          options: nil,
          oneof_decl: [],
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.DescriptorProto{
          name: "StreamTelemetryResponse",
          field: [
            %Google.Protobuf.FieldDescriptorProto{
              name: "telemetry",
              extendee: nil,
              number: 1,
              label: :LABEL_OPTIONAL,
              type: :TYPE_MESSAGE,
              type_name: ".petroedge.operational.v1.TelemetryEnvelope",
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "telemetry",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            }
          ],
          nested_type: [],
          enum_type: [],
          extension_range: [],
          extension: [],
          options: nil,
          oneof_decl: [],
          reserved_range: [],
          reserved_name: [],
          __unknown_fields__: [],
          __protobuf__: true
        }
      ],
      enum_type: [],
      service: [
        %Google.Protobuf.ServiceDescriptorProto{
          name: "OperationalDataService",
          method: [
            %Google.Protobuf.MethodDescriptorProto{
              name: "RegisterAsset",
              input_type: ".petroedge.operational.v1.RegisterAssetRequest",
              output_type: ".petroedge.operational.v1.RegisterAssetResponse",
              options: nil,
              client_streaming: false,
              server_streaming: false,
              __unknown_fields__: [],
              __protobuf__: true
            },
            %Google.Protobuf.MethodDescriptorProto{
              name: "GetAsset",
              input_type: ".petroedge.operational.v1.GetAssetRequest",
              output_type: ".petroedge.operational.v1.GetAssetResponse",
              options: nil,
              client_streaming: false,
              server_streaming: false,
              __unknown_fields__: [],
              __protobuf__: true
            },
            %Google.Protobuf.MethodDescriptorProto{
              name: "IngestTelemetry",
              input_type: ".petroedge.operational.v1.IngestTelemetryRequest",
              output_type: ".petroedge.operational.v1.IngestTelemetryResponse",
              options: nil,
              client_streaming: true,
              server_streaming: false,
              __unknown_fields__: [],
              __protobuf__: true
            },
            %Google.Protobuf.MethodDescriptorProto{
              name: "StreamTelemetry",
              input_type: ".petroedge.operational.v1.StreamTelemetryRequest",
              output_type: ".petroedge.operational.v1.StreamTelemetryResponse",
              options: nil,
              client_streaming: false,
              server_streaming: true,
              __unknown_fields__: [],
              __protobuf__: true
            }
          ],
          options: nil,
          __unknown_fields__: [],
          __protobuf__: true
        }
      ],
      extension: [],
      options: nil,
      source_code_info: %Google.Protobuf.SourceCodeInfo{
        location: [
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [],
            span: [0, 0, 64, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: ~c"\f",
            span: [0, 0, 18],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [2],
            span: [2, 0, 33],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [3, 0],
            span: [4, 0, 41],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0],
            span: [6, 0, 11, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 1],
            span: [6, 8, 30],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 0],
            span: [7, 2, 74],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 0, 1],
            span: [7, 6, 19],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 0, 2],
            span: [7, 20, 40],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 0, 3],
            span: ~c"\a3H",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 1],
            span: [8, 2, 59],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 1, 1],
            span: [8, 6, 14],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 1, 2],
            span: [8, 15, 30],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 1, 3],
            span: ~c"\b)9",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 2],
            span: [9, 2, 87],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 2, 1],
            span: [9, 6, 21],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 2, 5],
            span: [9, 22, 28],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 2, 2],
            span: [9, 29, 51],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 2, 3],
            span: ~c"\t>U",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 3],
            span: [10, 2, 87],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 3, 1],
            span: [10, 6, 21],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 3, 2],
            span: [10, 22, 44],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 3, 6],
            span: ~c"\n7=",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 3, 3],
            span: ~c"\n>U",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 0],
            span: [13, 0, 16, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 0, 1],
            span: [13, 8, 16],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 0, 2, 0],
            span: [14, 2, 22],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 0, 2, 0, 5],
            span: [14, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 0, 2, 0, 1],
            span: [14, 9, 17],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 0, 2, 0, 3],
            span: [14, 20, 21],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 0, 2, 1],
            span: [15, 2, 23],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 0, 2, 1, 5],
            span: [15, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 0, 2, 1, 1],
            span: [15, 9, 18],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 0, 2, 1, 3],
            span: [15, 21, 22],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1],
            span: [18, 0, 24, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 1],
            span: [18, 8, 13],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 0],
            span: [19, 2, 16],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 0, 5],
            span: [19, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 0, 1],
            span: [19, 9, 11],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 0, 3],
            span: [19, 14, 15],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 1],
            span: [20, 2, 18],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 1, 5],
            span: [20, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 1, 1],
            span: [20, 9, 13],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 1, 3],
            span: [20, 16, 17],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 2],
            span: [21, 2, 18],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 2, 5],
            span: [21, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 2, 1],
            span: [21, 9, 13],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 2, 3],
            span: [21, 16, 17],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 3],
            span: [22, 2, 24],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 3, 6],
            span: [22, 2, 10],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 3, 1],
            span: [22, 11, 19],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 3, 3],
            span: [22, 22, 23],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 4],
            span: [23, 2, 23],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 4, 5],
            span: [23, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 4, 1],
            span: [23, 9, 18],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 4, 3],
            span: [23, 21, 22],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 2],
            span: [26, 0, 28, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 2, 1],
            span: [26, 8, 28],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 2, 2, 0],
            span: [27, 2, 18],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 2, 2, 0, 6],
            span: [27, 2, 7],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 2, 2, 0, 1],
            span: ~c"\e\b\r",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 2, 2, 0, 3],
            span: [27, 16, 17],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 3],
            span: [30, 0, 32, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 3, 1],
            span: [30, 8, 29],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 3, 2, 0],
            span: [31, 2, 18],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 3, 2, 0, 6],
            span: [31, 2, 7],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 3, 2, 0, 1],
            span: [31, 8, 13],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 3, 2, 0, 3],
            span: [31, 16, 17],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 4],
            span: [34, 0, 36, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 4, 1],
            span: [34, 8, 23],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 4, 2, 0],
            span: [35, 2, 16],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 4, 2, 0, 5],
            span: [35, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 4, 2, 0, 1],
            span: ~c"#\t\v",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 4, 2, 0, 3],
            span: [35, 14, 15],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 5],
            span: [38, 0, 40, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 5, 1],
            span: [38, 8, 24],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 5, 2, 0],
            span: [39, 2, 18],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 5, 2, 0, 6],
            span: [39, 2, 7],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 5, 2, 0, 1],
            span: ~c"'\b\r",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 5, 2, 0, 3],
            span: [39, 16, 17],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 6],
            span: [42, 0, 44, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 6, 1],
            span: [42, 8, 30],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 6, 2, 0],
            span: [43, 2, 34],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 6, 2, 0, 6],
            span: [43, 2, 19],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 6, 2, 0, 1],
            span: [43, 20, 29],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 6, 2, 0, 3],
            span: ~c"+ !",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7],
            span: [46, 0, 51, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 1],
            span: [46, 8, 25],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 0],
            span: [47, 2, 22],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 0, 5],
            span: [47, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 0, 1],
            span: [47, 9, 17],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 0, 3],
            span: [47, 20, 21],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 1],
            span: [48, 2, 44],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 1, 6],
            span: [48, 2, 27],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 1, 1],
            span: [48, 28, 39],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 1, 3],
            span: ~c"0*+",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 2],
            span: [49, 2, 39],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 2, 6],
            span: [49, 2, 21],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 2, 1],
            span: [49, 22, 34],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 2, 3],
            span: ~c"1%&",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 3],
            span: [50, 2, 20],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 3, 5],
            span: [50, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 3, 1],
            span: [50, 9, 15],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 3, 3],
            span: [50, 18, 19],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 8],
            span: [53, 0, 55, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 8, 1],
            span: [53, 8, 31],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 8, 2, 0],
            span: [54, 2, 22],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 8, 2, 0, 5],
            span: [54, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 8, 2, 0, 1],
            span: [54, 9, 17],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 8, 2, 0, 3],
            span: [54, 20, 21],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9],
            span: [57, 0, 60, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9, 1],
            span: [57, 8, 30],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9, 2, 0],
            span: [58, 2, 22],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9, 2, 0, 5],
            span: [58, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9, 2, 0, 1],
            span: [58, 9, 17],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9, 2, 0, 3],
            span: [58, 20, 21],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9, 2, 1],
            span: [59, 2, 37],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9, 2, 1, 6],
            span: [59, 2, 27],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9, 2, 1, 1],
            span: [59, 28, 32],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9, 2, 1, 3],
            span: ~c";#$",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 10],
            span: [62, 0, 64, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 10, 1],
            span: [62, 8, 31],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 10, 2, 0],
            span: [63, 2, 34],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 10, 2, 0, 6],
            span: [63, 2, 19],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 10, 2, 0, 1],
            span: [63, 20, 29],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 10, 2, 0, 3],
            span: ~c"? !",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          }
        ],
        __pb_extensions__: %{},
        __unknown_fields__: [],
        __protobuf__: true
      },
      public_dependency: [],
      weak_dependency: [],
      syntax: "proto3",
      edition: nil,
      __unknown_fields__: [],
      __protobuf__: true
    }
  end

  rpc(
    :RegisterAsset,
    Petroedge.Operational.V1.RegisterAssetRequest,
    Petroedge.Operational.V1.RegisterAssetResponse
  )

  rpc(
    :GetAsset,
    Petroedge.Operational.V1.GetAssetRequest,
    Petroedge.Operational.V1.GetAssetResponse
  )

  rpc(
    :IngestTelemetry,
    stream(Petroedge.Operational.V1.IngestTelemetryRequest),
    Petroedge.Operational.V1.IngestTelemetryResponse
  )

  rpc(
    :StreamTelemetry,
    Petroedge.Operational.V1.StreamTelemetryRequest,
    stream(Petroedge.Operational.V1.StreamTelemetryResponse)
  )
end

defmodule Petroedge.Operational.V1.OperationalDataService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Petroedge.Operational.V1.OperationalDataService.Service
end
