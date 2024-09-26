List<String> images = [
  "https://s3-alpha-sig.figma.com/img/3b95/b15a/f8a9b5e1cd1fb2e0095bfcc79ef91e8a?Expires=1728259200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=AIwiQI7Q~IcS9u5-YiTCdz8NtTi0r-33A4zc8Kx8KFpXyPKI6Nz2Ra7K1V7d1xh4FLx1tz1Qx-Wsn3dvq9YU~ZIIAQFKgxKx1jaKlT9QG~C~b~~Sxx61jAVN5p273yRUnWnUL21n5LS3efSPCwL8dMFytTKz~1GTBJat90g6wTYZCFNBYIHG-udmmdYtxKKXPAisZWG5niQEIYQISzXaOmnSA6GzdXjFpB5tnDPuDKa~L-5O8nwHnElAaiMCCeuD2O1CvsEWK1XQDE~TRJExsBhl7qDis2boiblfKBzp~643vlA1SUjI4d24HIAsmeNj1SC07Rqg46o0UviiuwDSCw__",
  "https://s3-alpha-sig.figma.com/img/55e0/b10c/0051181a9e3eecaeaf6f5631d2c583c7?Expires=1728259200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=M6KfStJEyhAk1V-cceNjLuJauc5VplovoedQ86G8x5kbJMTGdqyVDWfOTaQqkL8IB6KGmGZwheRZah3YBvdFckVFEW-r4rPiHw3JakGMknZb2SB6MXLfqTvzXKBFOsoI8gyBNzhahm3O6NFDuN8WPAiAuKZvEFCXG-PumoX3kTXEP9cnd3AKQM6gCofyMQnzNig-gjjSMh1wZQ~je0i0kW7G5cIUMLa4S9zKiA2~lioS4P6w2tRPQUAHrCkw4eojTyIDnWdo0Ola1dUBC2bErbet69gul~ZcNIyYt7nyjkgyz76dJIjZ7TV0XuZxrWMvbHZ1npS4n3zf8LboC0mjhQ__",
  "https://s3-alpha-sig.figma.com/img/a717/90d1/c98e3a7acabd26f4ea21f8c3abc28cd1?Expires=1728259200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=jwPEHi1J3uQVQJNuciiBTgfWO-6ymvfmi3CL9nj4RA8xbS4bsnuSfrqe650scoeKJvqg6IjYW4YAjnDNlJDx4lveZi5xd9IcxRNSN4x2hBqWWxfJaDUu2Mjryb3mZdavDQhNviFyop0V~8~C67Mn8YqllMosABprBY6mvV9G7kX1LPp8T1~qrqLa0BtLxBh5Jt8~zkMp4rYlDCcMlMiNMzpTvRQ-3-7glD0Ynv1BIa6AMxaGU22ix1lZI51yMfylVVQx3Wn34oCBErzejwcoL6oRFhDZyKS6FC3SCmx9slGn-TVZsJMZJmz0lpyzN1EJkF1XiaMMiR-VE9cBD-RcGA__",
  "https://s3-alpha-sig.figma.com/img/57b5/590d/bb7a90bd3fad6f173e1be4407828cc27?Expires=1728259200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=IFUHzjp1VAef2WwfsBAaFVSF2djLn00rxUU4yYAbO44JVwBW4w7EjZ4usJGWJ71WfEu~l9Mhvp2NAduHN-d3vGr2v17PTmnlqQapS7kM9Zkc-I5qQ1OiUMexfWR9pinza5j7yniscMEGuHtvWlS82R3sHXp0OODR7kv64AdjtvOymoxV3PqLQ6s3~eaS8KfZJ~75UWgQNicrJCQmnrOgcUbfWzhj5Ui1H57zlXs6nCS3KjovNvAUuxYiMGlPe1fzEs5Btkd36OllwRxBK8LfQnvEpuizxx8F8ZBgxhTd3m-mgHGoz239wyINIfQkv1EaAmP3qSiCMVmF7A1FTx68Xw__",
];


  List<Project> projects = [
    Project(title: 'Kemampuan Merangkum Tulisan', imageUrl: images[0]),
    Project(title: 'Project Two', imageUrl:images[1]),
    Project(title: 'Project Three', imageUrl:images[2]),
    Project(title: 'Project Four', imageUrl: images[3]),
  ];

  class Project {
  final String title;
  final String imageUrl;

  Project({required this.title, required this.imageUrl});
}
