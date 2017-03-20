# encoding: utf-8
#
# Класс WordReader, отвечающий за чтение слова для игры.
class WordReader
  # Метод read_from_file, возвращающий случайное слово, прочитанное из файла,
  # имя которого нужно передать методу в качестве единственного аргумента.
  def read_from_file(file_name)
    # Начмнаем читать файл
    begin
      lines = File.readlines(file_name, encoding: "UTF-8")
    rescue SystemCallError => error
      abort "Ошибка чтения файла. #{error.message}" #При ошибке открытия списка слов завершаем программу.
      return nil
    end
    # Возвращаем случайную строчку (слово) из прочитанного массива, не забывая
    # удалить в конце символ перевода строки методом chomp.
    return lines.sample.chomp.downcase
  end
end
