@extends('layouts.master')

@section('content')
<div class="grids">
	<div class="panel panel-widget forms-panel">
		<div class="forms">
			<div class="form-grids widget-shadow" data-example-id="basic-forms"> 
				<div class="col-md-12">
					<a href="{{route('districts.index')}}" class="btn btn-default"><i class="fas fa-arrow-circle-left green-btn"></i>Back</a>
					@include('common.flash-message')
					<hr>
				</div>
				
				<div class="form-body">
					<form action="{{route('districts.update', $district)}}" method="post">
					{{ csrf_field() }}
					{{ method_field('PUT') }}

						<div class="form-group"> 
							<label for="name">District Name</label> 
							<input type="text" name="name" class="form-control" id="name" value="{{$district->name}}" required> 
						</div>						

						<button type="submit" class="btn btn-default">Update</button>
					</form> 
				</div>
			</div>
		</div>
	</div>
</div>
@endsection
