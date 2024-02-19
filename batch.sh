# Get the file extension as an input
file_extension=$1

for file in *."$file_extension"; do
    # Extract the filename without extension
    base_name=$(basename "$file"."$file_extension")

    # Convert to lowercase, replace whitespace with dashes, and remove special characters
    safe_name=$(echo "$base_name" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g' | sed 's/-d-d.*//')

    # Apply the fade-in, fade-out, and trim
    ffmpeg -i "$file" -af "afade=t=in:ss=0:d=5,afade=t=out:st=$(bc <<< "595"):d=5" -t "$(bc <<< "600")" "${safe_name}.$file_extension"
done
