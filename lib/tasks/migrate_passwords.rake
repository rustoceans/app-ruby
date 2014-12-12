# encoding: utf-8
namespace :app do
	desc "Encripta todas as senhas \
		que ainda não foram processadas \
		no banco de dados"
	task migrar_senhas: :environment do
	end
end