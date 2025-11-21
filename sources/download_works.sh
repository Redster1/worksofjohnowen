#!/bin/bash
# Download John Owen's works from Internet Archive
# All works are public domain
# Run from repo root: bash sources/download_works.sh

set -e
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DEST_DIR="$SCRIPT_DIR/internet-archive"
mkdir -p "$DEST_DIR/complete-works" "$DEST_DIR/individual-works"

echo "=== Downloading Individual Works ==="
cd "$DEST_DIR/individual-works"

curl -L "https://archive.org/download/deathofdeathinde00owen_0/deathofdeathinde00owen_0.pdf" -o "death-of-death.pdf"
curl -L "https://archive.org/download/ontemptationmort00owen/ontemptationmort00owen.pdf" -o "on-temptation-mortification.pdf"
curl -L "https://archive.org/download/naturepowerdecei00owen_0/naturepowerdecei00owen_0.pdf" -o "indwelling-sin.pdf"
curl -L "https://archive.org/download/oncommunionwithg00owen/oncommunionwithg00owen.pdf" -o "communion-with-god.pdf"
curl -L "https://archive.org/download/gloriousmysteryo00owen_0/gloriousmysteryo00owen_0.pdf" -o "glory-of-christ.pdf"
curl -L "https://archive.org/download/doctrineofjustif184100owen/doctrineofjustif184100owen.pdf" -o "justification-by-faith.pdf"
curl -L "https://archive.org/download/pneumatologiaord0001owen/pneumatologiaord0001owen.pdf" -o "pneumatologia-holy-spirit.pdf"
curl -L "https://archive.org/download/forgivenessofsin0000owen/forgivenessofsin0000owen.pdf" -o "forgiveness-of-sin-psalm130.pdf"
curl -L "https://archive.org/download/gracedutyofbeing00owen/gracedutyofbeing00owen.pdf" -o "spiritually-minded.pdf"
curl -L "https://archive.org/download/vindi00owen/vindi00owen.pdf" -o "vindiciae-evangelicae.pdf"

echo ""
echo "=== Downloading Complete Works Volumes ==="
cd "$DEST_DIR/complete-works"

curl -L "https://archive.org/download/theworksofowen01owenuoft/theworksofowen01owenuoft.pdf" -o "works-vol-01.pdf"
curl -L "https://archive.org/download/worksofjohnowen02owen/worksofjohnowen02owen.pdf" -o "works-vol-02.pdf"
curl -L "https://archive.org/download/worksofjohnowen03owen/worksofjohnowen03owen.pdf" -o "works-vol-03.pdf"
curl -L "https://archive.org/download/owensworks04owenuoft/owensworks04owenuoft.pdf" -o "works-vol-04.pdf"
curl -L "https://archive.org/download/worksofjohnowen05owen/worksofjohnowen05owen.pdf" -o "works-vol-05.pdf"
curl -L "https://archive.org/download/theworksofowen06owenuoft/theworksofowen06owenuoft.pdf" -o "works-vol-06.pdf"
curl -L "https://archive.org/download/worksofjohnowe07owen/worksofjohnowe07owen.pdf" -o "works-vol-07.pdf"
curl -L "https://archive.org/download/theworksofowen08owenuoft/theworksofowen08owenuoft.pdf" -o "works-vol-08.pdf"
curl -L "https://archive.org/download/works___10owenuoft/works___10owenuoft.pdf" -o "works-vol-10.pdf"
curl -L "https://archive.org/download/theworksofowen11owenuoft/theworksofowen11owenuoft.pdf" -o "works-vol-11.pdf"
curl -L "https://archive.org/download/worksofjohnowe12owen/worksofjohnowe12owen.pdf" -o "works-vol-12.pdf"
curl -L "https://archive.org/download/worksofjohnow13owen/worksofjohnow13owen.pdf" -o "works-vol-13.pdf"
curl -L "https://archive.org/download/worksofjohnowen14owen/worksofjohnowen14owen.pdf" -o "works-vol-14.pdf"
curl -L "https://archive.org/download/worksofjohnowe15owen/worksofjohnowe15owen.pdf" -o "works-vol-15.pdf"
curl -L "https://archive.org/download/worksofjohnowe16owen/worksofjohnowe16owen.pdf" -o "works-vol-16.pdf"
curl -L "https://archive.org/download/worksofjohnowen187017owen/worksofjohnowen187017owen.pdf" -o "works-vol-17.pdf"
curl -L "https://archive.org/download/worksofjohnowe18owen/worksofjohnowe18owen.pdf" -o "works-vol-18.pdf"
curl -L "https://archive.org/download/worksofjohnowend0019owen/worksofjohnowend0019owen.pdf" -o "works-vol-19.pdf"

echo ""
echo "=== Downloading Hebrews Exposition ==="
curl -L "https://archive.org/download/expositionofepis01owen/expositionofepis01owen.pdf" -o "hebrews-exposition-01.pdf"
curl -L "https://archive.org/download/expositionofepis184001owen/expositionofepis184001owen.pdf" -o "hebrews-exposition-1840-01.pdf"
curl -L "https://archive.org/download/expositionofepis184002owen/expositionofepis184002owen.pdf" -o "hebrews-exposition-1840-02.pdf"

echo ""
echo "=== Download Complete ==="
echo "Files saved to: $DEST_DIR"
du -sh "$DEST_DIR"
