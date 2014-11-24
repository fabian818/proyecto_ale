class TasksController < ApplicationController
  def asign_notes
  	

  end

  def create
  	e = Enrollment.find(params[:enrollment_id])
  	unless params[:note_1] == '' or params[:note_1].nil?
  		if Note.where(enrollment: e, note_type_id: 1).exists?
  			n = Note.where(enrollment: e, note_type_id: 1).last
  			n.destroy
  		end
  		Note.create(enrollment: e, note_type_id: 1, value: params[:note_1])
  	end
  	unless params[:note_2] == '' or params[:note_2].nil?
  		if Note.where(enrollment: e, note_type_id: 2).exists?
  			n = Note.where(enrollment: e, note_type_id: 2).last
  			n.destroy
  		end
  		Note.create(enrollment: e, note_type_id: 2, value: params[:note_2])
  	end
  	unless params[:note_3] == '' or params[:note_3].nil?
  		if Note.where(enrollment: e, note_type_id: 3).exists?
  			n = Note.where(enrollment: e, note_type_id: 3).last
  			n.destroy
  		end
  		Note.create(enrollment: e, note_type_id: 3, value: params[:note_3])
  	end
  	unless params[:note_4] == '' or params[:note_4].nil?
  		if Note.where(enrollment: e, note_type_id: 4).exists?
  			n = Note.where(enrollment: e, note_type_id: 4).last
  			n.destroy
  		end
  		Note.create(enrollment: e, note_type_id: 4, value: params[:note_4])
  	end
  	unless params[:note_5] == '' or params[:note_5].nil?
  		if Note.where(enrollment: e, note_type_id: 5).exists?
  			n = Note.where(enrollment: e, note_type_id: 5).last
  			n.destroy
  		end
  		Note.create(enrollment: e, note_type_id: 5, value: params[:note_5])
  	end
  	unless params[:note_6] == '' or params[:note_6].nil?
  		if Note.where(enrollment: e, note_type_id: 6).exists?
  			n = Note.where(enrollment: e, note_type_id: 6).last
  			n.destroy
  		end
  		Note.create(enrollment: e, note_type_id: 6, value: params[:note_6])
  	end

  	redirect_to perfil_path(id: Enrollment.find(params[:enrollment_id]).student.id)
  end
  	
end
