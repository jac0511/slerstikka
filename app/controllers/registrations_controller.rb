class RegistrationsController < Devise::RegistrationsController

layout "application"

	private

	def sign_up_params
		params.require(:user).permit(:etunimi, :sukunimi, :email, :password, :password_confirmation, :kotikunta, :puhelin, :metsastajanumero, :ayy_jasen, :muussa_seurassa, :hallituksessa, :avaimellinen, :oravannahat, :muu1, :muu2, :muu3, :muu4)
	end
	
	def account_update_params
		params.require(:user).permit(:etunimi, :sukunimi, :email, :password, :password_confirmation, :kotikunta, :puhelin, :metsastajanumero, :ayy_jasen, :muussa_seurassa, :hallituksessa, :avaimellinen, :oravannahat, :muu1, :muu2, :muu3, :muu4, :current_password)
	end
	
end