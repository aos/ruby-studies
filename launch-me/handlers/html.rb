class Html

  DEFAULT_BROWSER = 'chrome'

  def run(file, args)
    if args.empty?
      system "#{DEFAULT_BROWSER} #{file}"
    else
      dispatch_on_parameters file, args
    end
  end

  def dispatch_on_parameters(file, args)
    cmd = args.shift
    send "do_#{cmd}", file, args
  end

  def do_firefox(file, args=nil)
    system "opera #{file} #{args}"
  end

  def do_firefox(file, args=nil)
    system "firefox #{file} #{args}"
  end

  def do_report(file, args=nil)
    require 'rexml/document'
    begin
      dom = REXML::Document.new(IO.read(file))
      if args.empty?
        puts basic_xhtml_report(dom)
      else
        puts report_on(dom, args.first)
      end
    rescue Exception
      warn "There was a problem reading '#{file}': \n#{$!}"
    end
  end

  def report_on(dom, element)
    els = dom.root.elements.to_a "//#{element}"
    "The document has #{els.size} '#{element}' elements"
  end

  def basic_xhtml_report(dom)
    report = []
    css = dom.root.elements.to_a '//link[@rel="stylesheet"]'
    unless css.empty?
      report << "The file references #{css.size} stylesheets"
      css.each do |el|
        file_name = el.attributes['href']
        file_name.gsub! /^\//, ''
        unless File.exist? file_name
          report << "*** Cannot find stylesheet file '#{file_name}'"
        end
      end
    end

    js = dom.root.elements.to_a '//script'
    unless js.empty?
      report << "The file references #{js.size} JS files"
      js.each do |el|
        file_name = el.attribute['src']
        file_name.gsub! /^\//, ''
        unless File.exist? file_name
          report << "*** Cannot find JS file '#{file_name}'"
        end
      end
    end

    report.join "\n"
  end
end
