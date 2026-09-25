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
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "event_id",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "eventId",
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
  field(:event_id, 5, type: :string, json_name: "eventId")
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
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "rejected",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "rejected",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "errors",
          extendee: nil,
          number: 3,
          label: :LABEL_REPEATED,
          type: :TYPE_MESSAGE,
          type_name: ".petroedge.operational.v1.TelemetryError",
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "errors",
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
  field(:rejected, 2, type: :uint32)
  field(:errors, 3, repeated: true, type: Petroedge.Operational.V1.TelemetryError)
end

defmodule Petroedge.Operational.V1.TelemetryError do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.17.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "TelemetryError",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "index",
          extendee: nil,
          number: 1,
          label: :LABEL_OPTIONAL,
          type: :TYPE_UINT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "index",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "code",
          extendee: nil,
          number: 2,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "code",
          proto3_optional: nil,
          __unknown_fields__: [],
          __protobuf__: true
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "message",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "message",
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

  field(:index, 1, type: :uint32)
  field(:code, 2, type: :string)
  field(:message, 3, type: :string)
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
            },
            %Google.Protobuf.FieldDescriptorProto{
              name: "event_id",
              extendee: nil,
              number: 5,
              label: :LABEL_OPTIONAL,
              type: :TYPE_STRING,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "eventId",
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
            },
            %Google.Protobuf.FieldDescriptorProto{
              name: "rejected",
              extendee: nil,
              number: 2,
              label: :LABEL_OPTIONAL,
              type: :TYPE_UINT32,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "rejected",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            },
            %Google.Protobuf.FieldDescriptorProto{
              name: "errors",
              extendee: nil,
              number: 3,
              label: :LABEL_REPEATED,
              type: :TYPE_MESSAGE,
              type_name: ".petroedge.operational.v1.TelemetryError",
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "errors",
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
          name: "TelemetryError",
          field: [
            %Google.Protobuf.FieldDescriptorProto{
              name: "index",
              extendee: nil,
              number: 1,
              label: :LABEL_OPTIONAL,
              type: :TYPE_UINT32,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "index",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            },
            %Google.Protobuf.FieldDescriptorProto{
              name: "code",
              extendee: nil,
              number: 2,
              label: :LABEL_OPTIONAL,
              type: :TYPE_STRING,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "code",
              proto3_optional: nil,
              __unknown_fields__: [],
              __protobuf__: true
            },
            %Google.Protobuf.FieldDescriptorProto{
              name: "message",
              extendee: nil,
              number: 3,
              label: :LABEL_OPTIONAL,
              type: :TYPE_STRING,
              type_name: nil,
              default_value: nil,
              options: nil,
              oneof_index: nil,
              json_name: "message",
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
            span: [0, 0, 82, 1],
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
            span: [6, 0, 13, 1],
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
            span: [11, 2, 87],
            leading_comments:
              " Invalid events are rejected individually and reported in the response.\n Storage failures terminate the RPC with UNAVAILABLE or INTERNAL.\n",
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 2, 1],
            span: [11, 6, 21],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 2, 5],
            span: [11, 22, 28],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 2, 2],
            span: [11, 29, 51],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 2, 3],
            span: ~c"\v>U",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 3],
            span: [12, 2, 87],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 3, 1],
            span: [12, 6, 21],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 3, 2],
            span: [12, 22, 44],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 3, 6],
            span: ~c"\f7=",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [6, 0, 2, 3, 3],
            span: ~c"\f>U",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 0],
            span: [15, 0, 18, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 0, 1],
            span: [15, 8, 16],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 0, 2, 0],
            span: [16, 2, 22],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 0, 2, 0, 5],
            span: [16, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 0, 2, 0, 1],
            span: [16, 9, 17],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 0, 2, 0, 3],
            span: [16, 20, 21],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 0, 2, 1],
            span: [17, 2, 23],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 0, 2, 1, 5],
            span: [17, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 0, 2, 1, 1],
            span: [17, 9, 18],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 0, 2, 1, 3],
            span: [17, 21, 22],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1],
            span: [20, 0, 26, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 1],
            span: [20, 8, 13],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 0],
            span: [21, 2, 16],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 0, 5],
            span: [21, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 0, 1],
            span: [21, 9, 11],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 0, 3],
            span: [21, 14, 15],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 1],
            span: [22, 2, 18],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 1, 5],
            span: [22, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 1, 1],
            span: [22, 9, 13],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 1, 3],
            span: [22, 16, 17],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 2],
            span: [23, 2, 18],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 2, 5],
            span: [23, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 2, 1],
            span: [23, 9, 13],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 2, 3],
            span: [23, 16, 17],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 3],
            span: [24, 2, 24],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 3, 6],
            span: [24, 2, 10],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 3, 1],
            span: [24, 11, 19],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 3, 3],
            span: [24, 22, 23],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 4],
            span: [25, 2, 23],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 4, 5],
            span: [25, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 4, 1],
            span: [25, 9, 18],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 1, 2, 4, 3],
            span: [25, 21, 22],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 2],
            span: [28, 0, 30, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 2, 1],
            span: [28, 8, 28],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 2, 2, 0],
            span: [29, 2, 18],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 2, 2, 0, 6],
            span: [29, 2, 7],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 2, 2, 0, 1],
            span: [29, 8, 13],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 2, 2, 0, 3],
            span: [29, 16, 17],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 3],
            span: [32, 0, 34, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 3, 1],
            span: [32, 8, 29],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 3, 2, 0],
            span: [33, 2, 18],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 3, 2, 0, 6],
            span: [33, 2, 7],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 3, 2, 0, 1],
            span: ~c"!\b\r",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 3, 2, 0, 3],
            span: [33, 16, 17],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 4],
            span: [36, 0, 38, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 4, 1],
            span: [36, 8, 23],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 4, 2, 0],
            span: [37, 2, 16],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 4, 2, 0, 5],
            span: [37, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 4, 2, 0, 1],
            span: ~c"%\t\v",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 4, 2, 0, 3],
            span: [37, 14, 15],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 5],
            span: [40, 0, 42, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 5, 1],
            span: [40, 8, 24],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 5, 2, 0],
            span: [41, 2, 18],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 5, 2, 0, 6],
            span: [41, 2, 7],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 5, 2, 0, 1],
            span: ~c")\b\r",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 5, 2, 0, 3],
            span: [41, 16, 17],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 6],
            span: [44, 0, 46, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 6, 1],
            span: [44, 8, 30],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 6, 2, 0],
            span: [45, 2, 34],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 6, 2, 0, 6],
            span: [45, 2, 19],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 6, 2, 0, 1],
            span: [45, 20, 29],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 6, 2, 0, 3],
            span: ~c"- !",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7],
            span: [48, 0, 55, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 1],
            span: [48, 8, 25],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 0],
            span: [49, 2, 22],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 0, 5],
            span: [49, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 0, 1],
            span: [49, 9, 17],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 0, 3],
            span: [49, 20, 21],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 1],
            span: [50, 2, 44],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 1, 6],
            span: [50, 2, 27],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 1, 1],
            span: [50, 28, 39],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 1, 3],
            span: ~c"2*+",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 2],
            span: [51, 2, 39],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 2, 6],
            span: [51, 2, 21],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 2, 1],
            span: [51, 22, 34],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 2, 3],
            span: ~c"3%&",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 3],
            span: [52, 2, 20],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 3, 5],
            span: [52, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 3, 1],
            span: [52, 9, 15],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 3, 3],
            span: [52, 18, 19],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 4],
            span: [54, 2, 22],
            leading_comments:
              " Stable client-provided identifier. Clients MUST set it when retries are possible.\n",
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 4, 5],
            span: [54, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 4, 1],
            span: [54, 9, 17],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 7, 2, 4, 3],
            span: [54, 20, 21],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 8],
            span: [57, 0, 64, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 8, 1],
            span: [57, 8, 31],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 8, 2, 0],
            span: [59, 2, 22],
            leading_comments: " Number of new events inserted during this request.\n",
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 8, 2, 0, 5],
            span: [59, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 8, 2, 0, 1],
            span: [59, 9, 17],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 8, 2, 0, 3],
            span: [59, 20, 21],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 8, 2, 1],
            span: [61, 2, 22],
            leading_comments:
              " Number of events rejected as invalid, already processed, or conflicting.\n",
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 8, 2, 1, 5],
            span: [61, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 8, 2, 1, 1],
            span: [61, 9, 17],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 8, 2, 1, 3],
            span: [61, 20, 21],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 8, 2, 2],
            span: [63, 2, 37],
            leading_comments:
              " One entry for every rejected event, ordered by zero-based stream index.\n",
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 8, 2, 2, 4],
            span: [63, 2, 10],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 8, 2, 2, 6],
            span: [63, 11, 25],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 8, 2, 2, 1],
            span: [63, 26, 32],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 8, 2, 2, 3],
            span: ~c"?#$",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9],
            span: [66, 0, 73, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9, 1],
            span: [66, 8, 22],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9, 2, 0],
            span: [68, 2, 19],
            leading_comments:
              " Zero-based position of the rejected request in the client stream.\n",
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9, 2, 0, 5],
            span: [68, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9, 2, 0, 1],
            span: [68, 9, 14],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9, 2, 0, 3],
            span: [68, 17, 18],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9, 2, 1],
            span: [70, 2, 18],
            leading_comments:
              " Stable machine-readable code. Clients SHOULD branch on this field.\n",
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9, 2, 1, 5],
            span: [70, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9, 2, 1, 1],
            span: ~c"F\t\r",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9, 2, 1, 3],
            span: [70, 16, 17],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9, 2, 2],
            span: [72, 2, 21],
            leading_comments:
              " Safe human-readable detail; never contains database or telemetry payload data.\n",
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9, 2, 2, 5],
            span: [72, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9, 2, 2, 1],
            span: [72, 9, 16],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 9, 2, 2, 3],
            span: [72, 19, 20],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 10],
            span: [75, 0, 78, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 10, 1],
            span: [75, 8, 30],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 10, 2, 0],
            span: [76, 2, 22],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 10, 2, 0, 5],
            span: [76, 2, 8],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 10, 2, 0, 1],
            span: [76, 9, 17],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 10, 2, 0, 3],
            span: [76, 20, 21],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 10, 2, 1],
            span: [77, 2, 37],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 10, 2, 1, 6],
            span: [77, 2, 27],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 10, 2, 1, 1],
            span: [77, 28, 32],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 10, 2, 1, 3],
            span: ~c"M#$",
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 11],
            span: [80, 0, 82, 1],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 11, 1],
            span: [80, 8, 31],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 11, 2, 0],
            span: [81, 2, 34],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 11, 2, 0, 6],
            span: [81, 2, 19],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 11, 2, 0, 1],
            span: [81, 20, 29],
            leading_comments: nil,
            trailing_comments: nil,
            leading_detached_comments: [],
            __unknown_fields__: [],
            __protobuf__: true
          },
          %Google.Protobuf.SourceCodeInfo.Location{
            path: [4, 11, 2, 0, 3],
            span: ~c"Q !",
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
