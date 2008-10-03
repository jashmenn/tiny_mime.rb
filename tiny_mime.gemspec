Gem::Specification.new do |s|
  s.name = %q{tiny_mime}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nate Murray"]
  s.date = %q{2008-10-03}
  s.description = %q{description of gem}
  s.email = ["nate@natemurray.com"]
  s.extra_rdoc_files = ["History.txt", "License.txt", "Manifest.txt", "PostInstall.txt", "README.txt", "website/index.txt"]
  s.files = ["History.txt", "License.txt", "Manifest.txt", "PostInstall.txt", "README.txt", "Rakefile", "config/hoe.rb", "config/requirements.rb", "lib/tiny_mime.rb", "lib/tiny_mime/version.rb", "script/console", "script/destroy", "script/generate", "script/txt2html", "setup.rb", "tasks/deployment.rake", "tasks/environment.rake", "tasks/website.rake", "test/test_helper.rb", "test/test_tiny_mime.rb", "website/index.html", "website/index.txt", "website/javascripts/rounded_corners_lite.inc.js", "website/stylesheets/screen.css", "website/template.html.erb"]
  s.has_rdoc = true
  s.homepage = %q{http://tiny_mime.rubyforge.org}
  s.post_install_message = %q{
For more information on tiny_mime, see http://tiny_mime.rubyforge.org

NOTE: Change this information in PostInstall.txt 
You can also delete it if you don't want it.


}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{tiny_mime}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{description of gem}
  s.test_files = ["test/test_helper.rb", "test/test_tiny_mime.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_development_dependency(%q<hoe>, [">= 1.7.0"])
    else
      s.add_dependency(%q<hoe>, [">= 1.7.0"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.7.0"])
  end
end
