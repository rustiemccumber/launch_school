# the following list contains the names of individuals who are pioneers
# in the field of computing or that have had a significant influend
# on the field.  The names are encryped tho, using Rot13

AlPHABET = ('a'..'z').to_a
ENCRYPTED_PIONEERS = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
].freeze

def decode_name(name)
  array_chars = name.chars
  decrypted_name = array_chars.map do |char|
    if AlPHABET.include?(char) || AlPHABET.include?(char.upcase)
      current_idx = AlPHABET.index(char.downcase) 
      new_index = current_idx + 13
      new_index -= 26 if (new_index > 25)
      AlPHABET[new_index]
    else
      char
    end 
  end 
  decrypted_name.join
end

def decode_all_names
  ENCRYPTED_PIONEERS.map {|person| decode_name(person)}
end



p decode_all_names

