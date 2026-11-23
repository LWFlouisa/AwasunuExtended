def consogram(*args)
  b1, b2, b3,
  c1, c2, c3,
  d1, d2, d3,
  f1, f2, f3,
  g1, g2, g3,
  h1, h2, h3,
  m1, m2, m3,
  n1, n2, n3,
  p1, p2, p3 = args

  b = [b1, b2, b3]
  c = [c1, c2, c3]
  d = [d1, d2, d3]
  f = [f1, f2, f3]
  g = [g1, g2, g3]
  h = [h1, h2, h3]
  m = [m1, m2, m3]
  n = [n1, n2, n2]
  p = [p1, p2, p3]

  matrix = [
    [[b, b, b, b, b, b, b, b, b],
     [b, b, b, b, b, b, b, b, c],
     [b, b, b, b, b, b, b, b, d],
     [b, b, b, b, b, b, b, b, f],
     [b, b, b, b, b, b, b, b, g],
     [b, b, b, b, b, b, b, b, h],
     [b, b, b, b, b, b, b, b, m],
     [b, b, b, b, b, b, b, b, n],
     [b, b, b, b, b, b, b, b, p]],

    [[c, c, c, c, c, c, c, c, b],
     [c, c, c, c, c, c, c, c, c],
     [c, c, c, c, c, c, c, c, d],
     [c, c, c, c, c, c, c, c, f],
     [c, c, c, c, c, c, c, c, g],
     [c, c, c, c, c, c, c, c, h],
     [c, c, c, c, c, c, c, c, m],
     [c, c, c, c, c, c, c, c, n],
     [c, c, c, c, c, c, c, c, p]],

    [[d, d, d, d, d, d, d, d, b],
     [d, d, d, d, d, d, d, d, c],
     [d, d, d, d, d, d, d, d, d],
     [d, d, d, d, d, d, d, d, f],
     [d, d, d, d, d, d, d, d, g],
     [d, d, d, d, d, d, d, d, h],
     [d, d, d, d, d, d, d, d, m],
     [d, d, d, d, d, d, d, d, n],
     [d, d, d, d, d, d, d, d, p]],

    [[f, f, f, d, d, d, d, d, b],
     [f, f, f, d, d, d, d, d, c],
     [f, f, f, d, d, d, d, d, d],
     [f, f, f, d, d, d, d, d, f],
     [f, f, f, d, d, d, d, d, g],
     [f, f, f, d, d, d, d, d, h],
     [f, f, f, d, d, d, d, d, m],
     [f, f, f, d, d, d, d, d, n],
     [f, f, f, d, d, d, d, d, p]],
  ], [
  ], [
  ]
