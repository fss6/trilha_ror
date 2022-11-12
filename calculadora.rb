
puts "Selecione a operação desejada: "
puts "[ 1 ] soma"
puts "[ 2 ] subtração"
puts "[ 3 ] multiplicação"
puts "[ 4 ] divisão"

operacao = gets.chomp.to_i
puts "Digite o valor 1"
n1 = gets.chomp.to_i
puts "Digite o valor 2"
n2 = gets.chomp.to_i

case operacao
    when 1
        soma = n1 + n2
        puts "#{n1} + #{n2} = #{soma}"
    when 2
        sub = n1 - n2
        puts "#{n1} - #{n2} = #{sub}"
    when 3
        mult = n1 * n2
        puts "#{n1} * #{n2} = #{mult}"
    when 4
        div = n1 / n2
        puts "#{n1} / #{n2} = #{div}"
end
