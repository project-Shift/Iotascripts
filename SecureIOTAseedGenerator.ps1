# Secure IOTA Seed Generator

# uses Security.Cryptography.RNGCryptoServiceProvider , equivalent to unix's /dev/urandom
# defaults to generating only one seed if no parameter is supplied

# usage example : SecureIOTASeedGenerator 10 , will generate 10 seeds in a row

# Windows-only compatible, Powershell 5 or higher, depends on .Net 4.5.2 or higher , may work with lower versions but RNG may not be as safe, was not tested

# validated for entropy and randoms results can be trusted as described in http://research.ijcaonline.org/volume113/number8/pxc3901710.pdf


param([int]$NumberSeeds = 1)

$PossibleValues = "9ABCDEFGHIJKLMNOPQRSTUVWXYZ" # IOTA's default tryte space for balanced trinary-encoded representation 
$NumberOfTrytes = 81    # Current number of used and accepted trytes in a seed

For ($repeat=1; $repeat -le $NumberSeeds; $repeat++)
{
    $seed = ""
    $salt = New-Object byte[]($NumberOfTrytes)
    $rng = [Security.Cryptography.RNGCryptoServiceProvider]::Create()
    $rng.GetBytes($salt)
    For ($i=0; $i -lt ($NumberOfTrytes);$i++)
    {
        $seed += $PossibleValues[$Salt[$i] % $PossibleValues.Length]    # since the RNG function supplies arrays of bytes, we must flatten the range to the 27-tryte range used for IOTA
    }
$seed
}
