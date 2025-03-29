/* 
 * AUTHOR : Mohammed Nayeem 
 * github.com/MohammedNayeemE
 * 
 */
/* ------------------------------ IMPORTS -------------------------------------*/ 

#include <bits/stdc++.h>
#include <chrono>

/* ------------------------------ MACROS -------------------------------------*/ 
using namespace std;
using namespace std::chrono;  
#define pb push_back
#define eb emplace_back
#define fi first
#define se second
#define all(x) x.begin() , x.end() 
#define rall(x) x.rbegin() , x.rend()
#define INF 1e18
#define PI 3.1415926535897932384626433832795
#define rep(i,s,e) for(long long i = s ; i < e ; i++)
mt19937 rnd(chrono::steady_clock::now().time_since_epoch().count());
typedef long long ll;
typedef pair<int , int> pii;
typedef pair<long long , long long> pll; 
typedef vector<long long> vll;
typedef vector<int> vi;
typedef vector<pair<int ,int>> vpii;
typedef vector<pair<long long , long long>> vpll;
typedef vector<vector<char>> vcc;
typedef vector<char> vc;
const ll EMOD (1e9 + 7);
/* ------------------------------ UTILS -------------------------------------*/ 
vector<bool> isPrime;

void sieve(ll N) {
    isPrime = vector<bool>(N + 1, true);
    isPrime[0] = false;
    isPrime[1] = false;
    for (ll i = 2; i*i <= N; i++) {
        if (isPrime[i]) {
            for (ll j = i * i; j <= N; j += i) {
                isPrime[j] = false;
            }
        }
    }
}
ll GCD(ll a , ll b) { while(b != 0) { ll temp = b ; b = a % b ; a = temp ; } return a; }
ll mmul(ll a , ll b) { ll ans = 0 ; while(b){ if(b & 1) {ans = (ans + a) % EMOD ;} a = (a + a) % EMOD ; b >>= 1; } return ans; }
ll mpow(ll a , ll b , ll m = EMOD) { ll ans = 1 ; while(b) { if(b & 1) { ans = (ans * a) % m ; } a = ( a * a) % m ; b >>=1; }  return ans; }
ll mpow_i (ll a , ll mod ) { return mpow(a , mod - 2 , mod); }
vpll dir = {{-1 , 0} , {0 , -1} , {0 , 1} , {1 , 0}}; 
bool isV(char x ){
  return x =='a' || x == 'e' || x  =='i' || x =='o' || x =='u' || x == 'A' || x == 'I' || x == 'O' || x == 'U' || x  == 'E';
}


/* ------------------------------ SOLVE -------------------------------------*/ 



void solve() {





}




/* ------------------------------ MAIN -------------------------------------*/ 

int32_t main() {
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    cout.tie(NULL);
    /*#ifdef OJ*/
    /*freopen("input.txt", "r", stdin);*/
    /*freopen("output.txt", "w", stdout);*/
    /*freopen("output.txt" , "w" , stderr);*/
    /*#endif*/
    int t;
    int i = 1;
    cin >> t;
    while (t--) {
        #ifdef MDN 
            cout << "TEST -- " << i << '\n';
        #endif
        solve();
        i++;
    }
    
    #ifdef CLOCK
        cout << "__________________________" << '\n';
        cerr << endl << "finished in " << clock() * 1.0 / CLOCKS_PER_SEC << " sec" << '\n';
    #endif    
    return 0;
}
