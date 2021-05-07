def convert_length(length, unit_from, unit_to)
  unit = {m: 1, ft: 3.28, in: 39.37}
  to = unit[unit_from]
  from = unit[unit_to]
  (length * to/from).round(2)
end