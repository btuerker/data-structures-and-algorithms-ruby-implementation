def rot13(text)
  text.split('').map { |value| encrypt_rot13(value) }.join('')
end

def encrypt_rot13(value)
  return (value.ord + 13).chr if value.ord > 96 && value.ord < 110
  return (value.ord - 13).chr if value.ord >= 110 && value.ord <= 122
  return value
end

print 'qrygn => '
print rot13('qrygn'), "\n"
print 'zrrg ng pubpbyngr pbeare => '
print rot13('zrrg ng pubpbyngr pbeare'), "\n"
print 'gra zra => '
print rot13('gra zra'), "\n"
print 'gjb onpxhc grnzf => '
print rot13('gjb onpxhc grnzf'), "\n"
print 'zvqavtug rkgenpgvba"=> '
print rot13('zvqavtug rkgenpgvba'), "\n"
print 'burhan tuerker, ceren tuerker => '
print rot13('burhan tuerker, ceren tuerker')


