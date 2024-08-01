import path from 'path'
import { promises as fs } from 'fs'
import { capitalizeName } from './stringUtils.js'
import type { SourceFile } from './syntax/SourceFile.js'
import chalk from 'chalk'
import { Logger } from './Logger.js'

/**
 * Writes the given file to disk and returns it's actual path.
 */
export async function writeFile(
  basePath: string,
  file: SourceFile
): Promise<string> {
  const filepath = path.join(basePath, ...file.subdirectory, file.name)
  const language = capitalizeName(file.language)
  Logger.debug(`          ${chalk.dim(language)}: Creating ${file.name}...`)

  const dir = path.dirname(filepath)
  // Create directory if it doesn't exist yet
  await fs.mkdir(dir, { recursive: true })

  // Write file
  await fs.writeFile(filepath, file.content.trim(), 'utf8')

  return filepath
}
