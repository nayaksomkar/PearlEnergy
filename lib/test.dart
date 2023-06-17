Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              // flutter logo that will shown
              // above the background image
              children: [
                const Image(
                  image: AssetImage(
                    'assets/images/LogoTransparent.png',
                  ),
                  fit: BoxFit.cover,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.amber),
                      foregroundColor: MaterialStatePropertyAll(Colors.black)),
                  child: const Text(
                    'User Login',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: null,
                ),
                const Text(''),
                const ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.amber),
                      foregroundColor: MaterialStatePropertyAll(Colors.black)),
                  child: Text(
                    'Admin Login',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                        fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                  child: const Text('Request for a connection'),
                ),
              ]),