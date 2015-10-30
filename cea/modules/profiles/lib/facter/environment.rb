Facter.add('environment') do
  setcode do
        ret = Facter::Util::Resolution.exec('hostname -s | sed  -e \'s/[0-9]*//g\'  | rev | fold -w1 | head -1')
        case ret
        when 'd'
            'development'
         when 'h'
            'homolog'
         when 'p'
            'production'
        end
  end
end
