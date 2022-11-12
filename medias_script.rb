
notas = Array.new

puts "Digite o tipo de média: "
puts "[1] Aritmética"
puts "[2] Ponderada"
tipo_media = gets.chomp.to_i

3.times do |i|
    print "insira a nota #{i}: "
    nota = gets.chomp.to_i
    notas.push nota
end

def media_ponderada notas
    soma = 0
    pesos = [3,2,1]
    notas.each_with_index do |nota, i|
        soma += nota * pesos[i]
    end
    soma / pesos.sum
end

case tipo_media
when 1
    puts "Aritmética"
    puts notas.sum / notas.size
when 2
    puts "Ponderada"
    puts media_ponderada notas
end