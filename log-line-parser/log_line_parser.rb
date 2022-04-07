class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    mensaje = @line
    mensaje.slice(mensaje.index(' ') + 1, mensaje.length - mensaje.index(' ')).strip
  end

  def log_level
    log_level_message = @line
    log_level_message.slice(log_level_message.index('[') + 1, log_level_message.index(']') - 1).downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
