import os
import sys

def compare_data_resource_paths():
  data_resources_names = os.listdir('data')
  data_resources_paths = [os.path.join('data', i) for i in data_resources_names]
  local_package = Package('datapackage.json')
  datapackage_resouces_paths = [i["path"] for i in local_package.resources]
  if data_resources_paths != datapackage_resouces_paths:
    click.echo(f"Resources presentes no arquivo datapackage.json diferente dos listados da pasta data.")
    sys.exit(1)

if __name__ == '__main__':
	compare_data_resource_paths()
