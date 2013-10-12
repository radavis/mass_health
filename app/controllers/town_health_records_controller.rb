class TownHealthRecordsController < ApplicationController
  def index
    dont_show = ['id', 'city', 'created_at', 'updated_at']
    @queries = TownHealthRecord.column_names
    @queries.reject! { |q| dont_show.include?(q) }

    if @query = params[:q]
      @results = TownHealthRecord
        .select(['city', @query])
        .order(@query + ' desc')

      @max_value = @results.first[@query]
    end
  end
end
