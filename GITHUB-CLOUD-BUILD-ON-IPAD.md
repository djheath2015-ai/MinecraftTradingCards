# Build the real JAR in the cloud (iPad workflow)

This project cannot be compiled inside the ChatGPT workspace because it has Java 21 and no network access. This workflow uses GitHub Actions to build it remotely with Java 25 and Gradle 9.7.1.

## One-time setup

1. Open GitHub in Safari and sign in (or ask a parent/guardian to help if account setup is needed).
2. Create a new repository. A private repository is fine.
3. Upload this source ZIP into the repository root: `MinecraftTradingCards-Complete-Fabric-26.3.zip`.
4. In the repository choose **Add file → Create new file**. Name it exactly `.github/workflows/build.yml`.
5. Open `GITHUB-WORKFLOW-COPY.txt` from this project, copy all its text, and paste it into the new workflow file.
6. Commit the new file.

## Run the build

1. Open the repository's **Actions** tab.
2. Select **Build Minecraft Trading Cards JAR**.
3. Choose **Run workflow**.
4. Wait for the run to finish. A green check means the build succeeded. A red X means the compiler found a problem; open the run and inspect the **Unpack and build mod** step.
5. In the successful run, find **Artifacts** and download `Minecraft-Trading-Cards-Fabric-26.3-JAR`. That downloaded artifact contains the `.jar`.

## Getting it onto Windows without transferring from the iPad

Open the same GitHub repository on the Windows PC, go to **Actions**, open the successful run, and download the same artifact directly on Windows. Extract the downloaded artifact ZIP to get the `.jar`. Then use CurseForge's **Add Content / Install from File** option for your Minecraft profile.

The JAR is not created until a GitHub Actions run succeeds. This workflow is a cloud-build route, not a claim that the mod has already compiled or been tested.
