package org.alwaysinbeta.flixelgametest {
	import org.flixel.FlxTilemap;
	import org.flixel.FlxState;

	/**
	 * @author McFamily
	 */
	public class PlayState extends FlxState {
		
		private var _level :FlxTilemap;
		
		public function PlayState() {
		}

		override public function create() : void {
			var mapData: Array = [];
			_level = new FlxTilemap();
			_level.loadMap(FlxTilemap.arrayToCSV(mapData,40), TileGraphic, TileWidth, TileHeight, AutoTile, StartingIndex, DrawIndex, CollideIndex)			
		}

	}
}
