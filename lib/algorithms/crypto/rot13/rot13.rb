def rot13(secret_messages)
    result = []
    secret_messages
        .each { |e| result << e.split('').map { |value| encrypt_rot13(value) }.join('') }
    return result
end

def encrypt_rot13(value)
    return (value.ord + 13).chr if value.ord > 96 && value.ord < 110
    return (value.ord - 13).chr if value.ord >= 110 && value.ord <= 122
    return value
end

encrypted_messages = ["qrygn", "zrrg ng pubpbyngr pbeare", "gra zra", "gjb onpxhc grnzf", "zvqavtug rkgenpgvba"]
print encrypted_messages
puts
print rot13(encrypted_messages)
puts
print decrypted_text = ["burhan tuerker", "ceren tuerker"]
puts
print rot13(decrypted_text)
