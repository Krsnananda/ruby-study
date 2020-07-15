class Person
   def initialize(name, job)
     @name = name
     @job = job
   end
   
   attr_reader:name
   attr_writer:job
   attr_accessor :job #Permite leitura e escrita ao mesmo tempo (write e reader)
end
# É possivel passar as variáveis de instância diretamente pelo attr_writer e reader
# É a mesma coisa que
def name=(value)
   @name = value
end
