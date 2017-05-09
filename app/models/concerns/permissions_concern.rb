module PermissionsConcern
	extend ActiveSupport::Concern

	def is_patient?
		self.permission_level >= 1
	end

	def is_doctor?
		self.permission_level >= 2
	end

	def is_admin?
		self.permission_level >= 3
	end
end