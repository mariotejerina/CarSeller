module VehiclesHelper
  def formato(vehicle)
    "<td><strong>#{vehicle.brand.name}</strong> - </td> <td>#{vehicle.name}</td> <td>(<em>#{vehicle.vehicle_type.name}</em>)</td> ".html_safe
  end
end
