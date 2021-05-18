# rspec ./OutPut/name_index/spec/name_index_spec.rb
# ☝rspec実施する際のコマンド

# テスト対象をrequireする
require "./OutPut/name_index/name_index.rb"

describe NameIndex do
  specify { expect(NameIndex.create_index([])).to eq [] }
end